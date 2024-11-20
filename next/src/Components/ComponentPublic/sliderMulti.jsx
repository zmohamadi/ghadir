"use client";

export const SliderMultiple = () => {
    return(
        <>
        <div class="content">
            <div class="grid grid-cols-12 gap-6 mt-5">
                <div class="intro-y col-span-12 lg:col-span-6">
            {/* BEGIN: Multiple Item */}
                <div className="intro-y box mt-5">
                    <div className="flex flex-col sm:flex-row items-center p-5 border-b border-gray-200 dark:border-dark-5">
                        <h2 className="font-medium text-base ml-auto">
                            چند آیتم
                        </h2>
                        <div className="w-full sm:w-auto flex items-center sm:mr-auto mt-3 sm:mt-0">
                            <label className="form-check-label mr-0 sm:mr-2" for="show-example-2">نمایش کد</label>
                            <input id="show-example-2" data-target="#multiple-item-slider" className="show-code form-check-switch ml-0 mr-3" type="checkbox" />
                        </div>
                    </div>
                    <div id="multiple-item-slider" className="p-5">
                        <div className="preview">
                            <div className="mx-6">
                                <div className="multiple-items">
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                1
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                2
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                3
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                4
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                5
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                6
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                7
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                8
                                            </h3>
                                        </div>
                                    </div>
                                    <div className="h-32 px-2">
                                        <div className="h-full bg-gray-200 dark:bg-dark-1 rounded-md">
                                            <h3 className="h-full font-medium flex items-center justify-center text-2xl">
                                                9
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="source-code hidden">
                            <button data-target="#copy-multiple-item-slider" className="copy-code btn py-1 px-2 btn-outline-secondary"> <i data-feather="file" className="w-4 h-4 ml-2"></i> کپی کد </button>
                            <div className="overflow-y-auto mt-3 rounded-md">
                                <pre id="copy-multiple-item-slider" className="source-preview"> <code className="text-xs p-0 rounded-md html pl-5 pt-8 pb-4 -mb-10 -mt-10"> HTMLOpenTagdiv class=&quot;mx-6&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;multiple-items&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag1HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag2HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag3HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag4HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag5HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag6HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag7HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag8HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTagdiv class=&quot;h-32 px-2&quot;HTMLCloseTag HTMLOpenTagdiv class=&quot;h-full bg-gray-200 dark:bg-dark-1 rounded-md&quot;HTMLCloseTag HTMLOpenTagh3 class=&quot;h-full font-medium flex items-center justify-center text-2xl&quot;HTMLCloseTag9HTMLOpenTag/h3HTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag HTMLOpenTag/divHTMLCloseTag </code> </pre>
                            </div>
                        </div>
                    </div>
                </div>
            {/* END: Multiple Item */}
            </div>
                </div>
                </div>
        </>
    );
}