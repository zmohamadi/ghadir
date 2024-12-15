"use client";

import { useEffect, useState } from "react";
import { useLang } from "@/lib/lang";
import { useConfig } from "@/lib/config";
import {
  useData,
  useFormRefs,
  Button,
  ButtonContainer,
  Textarea,
  Frame,
  Box,
  Input,
} from "@/Theme/Midone/Forms";
import { FeatherIcon, Grid } from "@/Theme/Midone";
import { useRouter } from "next/navigation";
import { useUtility } from "@/lib";

export function Form({ id }) {
  const { Lang } = useLang();
  const { laraAdmin } = useConfig();
  const router = useRouter();
  const component = useFormRefs();
  const { save, get, destroy ,resetForm} = useData();
  const { reload } = useUtility();
  const [notifId, setNotifId] = useState(null);

  let method = notifId ? "edit" : "new";
  let url = notifId ? `${laraAdmin}/notif/${notifId}` : `${laraAdmin}/notif`;

  useEffect(() => {
    if (notifId) {
      get(url, component, "info");
      window.scrollTo({ top: 0, behavior: "smooth" });
    }
  }, [notifId]);

  const saveItem = () => {
    save(url, component, method,"",()=>reload());
  };

  const handleEdit = (id) => {
    setNotifId(id);
  };

  const handleDelete = (id) => {
    destroy(`${laraAdmin}/notif/${id}`);
  };

  const data = component?.state?.info;

  const gridInfo = {
    url: `${laraAdmin}/notif?promoter=${id}`,
    columns: [
      { label: "text", field: "content" },
      {
        label: "",
        sort: false,
        jsx: (item) => (
          <div className="flex justify-center">
            <FeatherIcon
              name="Edit"
              tooltip={Lang("public.edit")}
              onClick={() => handleEdit(item?.id)}
            />
            <FeatherIcon
              name="XOctagon"
              tooltip={Lang("public.delete")}
              color="darkred"
              onClick={() => handleDelete(item?.id)}
            />
          </div>
        ),
      },
    ],
  };

  return (
    <>
      <Frame title={Lang(["notif"]) }>
        <Box>
          <Input
            defaultValue={id}
            refItem={[component, `promoter_id`]}
            type="hidden"
          />
          <Textarea
            defaultValue={data?.content}
            className="col-span-12"
            label={Lang("text")}
            refItem={[component, `content`]}
          />
          <ButtonContainer>
            <Button label={Lang("save")} onClick={saveItem} />
          </ButtonContainer>
        </Box>

        <div className="intro-y col-span-12">
          <Grid {...gridInfo} />
        </div>
      </Frame>
    </>
  );
}
