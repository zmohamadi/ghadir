"use client";

export const ListInbox = () => {
    return(
        <>
        {/* BEGIN: Inbox Content */}
            <div className="intro-y inbox box mt-5">
                <div className="p-5 flex flex-col-reverse sm:flex-row text-gray-600 border-b border-gray-200 dark:border-dark-1">
                    <div className="flex items-center mt-3 sm:mt-0 border-t sm:border-0 border-gray-200 pt-5 sm:pt-0 mt-5 sm:mt-0 -mx-5 sm:mx-0 px-5 sm:px-0">
                        <input className="form-check-input" type="checkbox" />
                        <div className="dropdown mr-1" data-placement="left-start">
                            <a className="dropdown-toggle w-5 h-5 block dark:text-gray-300" href="javascript:;" aria-expanded="false"> <i data-feather="chevron-down" className="w-5 h-5"></i> </a>
                            <div className="dropdown-menu w-32" >
                                <div className="dropdown-menu__content box dark:bg-dark-1 p-2"> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">همه</a> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">هیچ</a> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">خوانده شده</a> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">خوانده نشده</a> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">شروع شده</a> <a href="" className="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md">شروع نشده</a> </div>
                            </div>
                        </div>
                        <a href="javascript:;" className="w-5 h-5 mr-5 flex items-center justify-center dark:text-gray-300"> <i className="w-4 h-4" data-feather="refresh-cw"></i> </a>
                        <a href="javascript:;" className="w-5 h-5 mr-5 flex items-center justify-center dark:text-gray-300"> <i className="w-4 h-4" data-feather="more-horizontal"></i> </a>
                    </div>
                    <div className="flex items-center sm:mr-auto">
                        <div className="dark:text-gray-300">1 - 50 از 5,238</div>
                        <a href="javascript:;" className="w-5 h-5 mr-5 flex items-center justify-center dark:text-gray-300"> <i className="w-4 h-4" data-feather="chevron-right"></i> </a>
                        <a href="javascript:;" className="w-5 h-5 mr-5 flex items-center justify-center dark:text-gray-300"> <i className="w-4 h-4" data-feather="chevron-left"></i> </a>
                        <a href="javascript:;" className="w-5 h-5 mr-5 flex items-center justify-center dark:text-gray-300"> <i className="w-4 h-4" data-feather="settings"></i> </a>
                    </div>
                </div>
                <div className="overflow-x-auto sm:overflow-x-visible">
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-6.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">انجلینا جولی</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">03:20 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-12.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">راسل کرو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">06:05 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-15.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">لئوناردو دی کاپریو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-3.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">کوین اسپیسی</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-5.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">رابرت دنیرو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-14.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">تام کروز</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-9.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">سیلور استالونه</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-11.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">کوین اسپیسی</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-15.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">رابرت دنیرو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-11.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">رابرت دنیرو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-8.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">برد پیت</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-14.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">جان تراولتا</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">03:20 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-1.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">سیلور استالونه</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-7.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">آل پاچینو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-2.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">جانی دپ</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">06:05 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-1.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">راسل کرو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">01:10 عصر</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-11.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">آل پاچینو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">06:05 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" checked />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-14.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">لئوناردو دی کاپریو</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-12.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">سیلور استالونه</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">06:05 صبح</div>
                            </div>
                        </div>
                    </div>
                    <div className="intro-y">
                        <div className="inbox__item inbox__item--active inline-block sm:block text-gray-700 dark:text-gray-500 bg-gray-100 dark:bg-dark-1 border-b border-gray-200 dark:border-dark-1">
                            <div className="flex px-5 py-3">
                                <div className="w-72 flex-none flex items-center ml-5">
                                    <input className="form-check-input flex-none" type="checkbox" />
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-4 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="star"></i> </a>
                                    <a href="javascript:;" className="w-5 h-5 flex-none mr-2 flex items-center justify-center text-gray-500"> <i className="w-4 h-4" data-feather="bookmark"></i> </a>
                                    <div className="w-6 h-6 flex-none image-fit relative mr-5">
                                        <img alt="Icewall Tailwind HTML Admin Template" className="rounded-full" src="dist/images/profile-13.jpg" />
                                    </div>
                                    <div className="inbox__item--sender truncate mr-3">برد پیت</div>
                                </div>
                                <div className="w-64 sm:w-auto truncate"> <span className="inbox__item--highlight">لورم ایپسوم متن ساختگی با تولید سادگی </span> نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است  </div>
                                <div className="inbox__item--time whitespace-nowrap mr-auto pr-10">05:09 صبح</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="p-5 flex flex-col sm:flex-row items-center text-center sm:text-left text-gray-600">
                    <div className="dark:text-gray-300">4.41 GB (25%) از 17 GB فضا استفاده شده است.</div>
                    <div className="sm:mr-auto mt-2 sm:mt-0 dark:text-gray-300">آخرین فعالیت: 36 دقیقه قبل</div>
                </div>
            </div>
        {/* END: Inbox Content */}
        </>
    );
}