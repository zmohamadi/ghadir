"use client";

export const ContentLayout = () => {
    return(
        <>
            {/* BEGIN: Content */}
                <div className="content">
                    <div className="intro-y news xl:w-3/5 p-5 box mt-8">
                        {/* BEGIN: Blog Layout */}
                        <h2 className="intro-y font-medium text-xl sm:text-2xl">
                            در دهه 1960 با انتشار لترسنت محبوب شد
                        </h2>
                        <div className="intro-y text-gray-700 dark:text-gray-600 mt-3 text-xs sm:text-sm"> 4 آذر 1400 <span className="mx-1">•</span> <a className="text-theme-17 dark:text-gray-500" href="">لپ‌تاپ و کامپیوتر</a> <span className="mx-1">•</span> 7 دقیقه خواندن  </div>
                        <div className="intro-y mt-6">
                            <div className="news__preview image-fit">
                                <img alt="Icewall Tailwind HTML Admin Template" className="rounded-md" src="dist/images/preview-12.jpg" />
                            </div>
                        </div>
                        <div className="intro-y flex relative pt-16 sm:pt-6 items-center pb-6">
                            <a href="" className="intro-x w-8 h-8 sm:w-10 sm:h-10 flex flex-none items-center justify-center rounded-full border border-gray-400 dark:border-dark-5 dark:bg-dark-5 dark:text-gray-300 text-gray-600 ml-3 tooltip" title="بوکمارک"> <i data-feather="bookmark" className="w-3 h-3"></i> </a>
                            <div className="intro-x flex ml-3">
                                <div className="intro-x w-8 h-8 sm:w-10 sm:h-10 image-fit">
                                    <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full border border-white zoom-in tooltip" src="dist/images/profile-5.jpg" title="رابرت د نیرو" />
                                </div>
                                <div className="intro-x w-8 h-8 sm:w-10 sm:h-10 image-fit -ml-4">
                                    <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full border border-white zoom-in tooltip" src="dist/images/profile-3.jpg" title="کیت وینسنت" />
                                </div>
                                <div className="intro-x w-8 h-8 sm:w-10 sm:h-10 image-fit -ml-4">
                                    <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full border border-white zoom-in tooltip" src="dist/images/profile-7.jpg" title="Will Smith" />
                                </div>
                            </div>
                            <div className="absolute sm:relative -mt-12 sm:mt-0 w-full flex text-gray-700 dark:text-gray-600 text-xs sm:text-sm">
                                <div className="intro-x mr-1 sm:mr-3"> نظرات: <span className="font-medium">86</span> </div>
                                <div className="intro-x mr-1 sm:mr-3"> مشاهده: <span className="font-medium">60k</span> </div>
                                <div className="intro-x sm:ml-3 mr-auto"> لایک: <span className="font-medium">40k</span> </div>
                            </div>
                            <a href="" className="intro-x w-8 h-8 sm:w-10 sm:h-10 flex flex-none items-center justify-center rounded-full bg-theme-31 dark:bg-dark-5 dark:text-gray-300 text-theme-26 mr-auto sm:ml-0 tooltip" title="اشتراک"> <i data-feather="share-2" className="w-3 h-3"></i> </a>
                            <a href="" className="intro-x w-8 h-8 sm:w-10 sm:h-10 flex flex-none items-center justify-center rounded-full bg-theme-17 text-white mr-3 tooltip" title="دانلود پی‌دی‌اف"> <i data-feather="share" className="w-3 h-3"></i> </a>
                        </div>
                        <div className="intro-y text-justify leading-relaxed">
                            <p className="mb-5">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان تون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                            <p className="mb-5">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان تون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.

</p>
                            <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان تون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.

</p>
                        </div>
                        <div className="intro-y flex text-xs sm:text-sm flex-col sm:flex-row items-center mt-5 pt-5 border-t border-gray-200 dark:border-dark-5">
                            <div className="flex items-center">
                                <div className="w-12 h-12 flex-none image-fit">
                                    <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-5.jpg" />
                                </div>
                                <div className="mr-3 ml-auto">
                                    <a href="" className="font-medium">رابرت دنیرو</a>, نویسنده
                                    <div className="text-gray-600">فرانت اند دولوپر سینیور</div>
                                </div>
                            </div>
                            <div className="flex items-center text-gray-700 dark:text-gray-600 sm:mr-auto mt-5 sm:mt-0">
                                اشتراک این پست: 
                                <a href="" className="w-8 h-8 sm:w-10 sm:h-10 rounded-full flex items-center justify-center border dark:border-dark-5 mr-2 text-gray-500 zoom-in tooltip" title="فیسبوک"> <i className="w-3 h-3 fill-current" data-feather="facebook"></i> </a>
                                <a href="" className="w-8 h-8 sm:w-10 sm:h-10 rounded-full flex items-center justify-center border dark:border-dark-5 mr-2 text-gray-500 zoom-in tooltip" title="توییتر"> <i className="w-3 h-3 fill-current" data-feather="twitter"></i> </a>
                                <a href="" className="w-8 h-8 sm:w-10 sm:h-10 rounded-full flex items-center justify-center border dark:border-dark-5 mr-2 text-gray-500 zoom-in tooltip"title="لینکدین"> <i className="w-3 h-3 fill-current" data-feather="linkedin"></i> </a>
                            </div>
                        </div>
                        {/* END: Blog Layout */}
                        {/* BEGIN: Comments */}
                        <div className="intro-y mt-5 pt-5 border-t border-gray-200 dark:border-dark-5">
                            <div className="text-base sm:text-lg font-medium">2 پاسخ</div>
                            <div className="news__input relative mt-5">
                                <i data-feather="message-circle" className="w-5 h-5 absolute my-auto inset-y-0 mr-6 right-0 text-gray-600"></i> 
                                <textarea className="form-control border-transparent bg-gray-200 pl-16 py-6 placeholder-theme-8 resize-none" rows="1" placeholder="نظر خود را بنویسید..."></textarea>
                            </div>
                        </div>
                        <div className="intro-y mt-5 pb-10">
                            <div className="pt-5">
                                <div className="flex">
                                    <div className="w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-5.jpg" />
                                    </div>
                                    <div className="mr-3 flex-1">
                                        <div className="flex items-center"> <a href="" className="font-medium">رابرت دنیرو</a> <a href="" className="mr-auto text-xs text-gray-600">پاسخ دادن</a> </div>
                                        <div className="text-gray-600 text-xs sm:text-sm">22 ثانیه قبل</div>
                                        <div className="mt-2"> در این صورت می توان امید داشت که تمام و
                                        دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز
                                        شامل حروفچینی دستاوردهای  </div>
                                    </div>
                                </div>
                            </div>
                            <div className="mt-5 pt-5 border-t border-gray-200 dark:border-dark-5">
                                <div className="flex">
                                    <div className="w-10 h-10 sm:w-12 sm:h-12 flex-none image-fit">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-3.jpg" />
                                    </div>
                                    <div className="mr-3 flex-1">
                                        <div className="flex items-center"> <a href="" className="font-medium">کیت وینسنت</a> <a href="" className="mr-auto text-xs text-gray-600">پاسخ دادن</a> </div>
                                        <div className="text-gray-600 text-xs sm:text-sm">39 دقیقه قبل</div>
                                        <div className="mt-2">لورم ایپسوم در این صورت می توان امید داشت که تمام و
                                        دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز
                                        شامل حروفچینی دستاوردهای ا </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {/* END: Comments */}
                    </div>
                </div>
            {/* END: Content */}
        </>
    );
}