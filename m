Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3ACC77A132
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 19:02:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbjHLRCY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 13:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjHLRCX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 13:02:23 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276ECD3
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 10:02:26 -0700 (PDT)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id UZjoq1APQLAoIUs0PqXDtc; Sat, 12 Aug 2023 17:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691859745; bh=Ei1Ik3B2JCEcSkO9cobKdMxY+9MnhvyWAVsilZ+k/58=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=UDu+MkVZ5UKpVhlir94gj9YV44QzsVoYlnVJradNEi9Rk00sazYklwggFIOf76416
         okesa5fuy+SRNYDZJ/qFwvAthFG+s+4aNiMg3SlaIEmWNLNPWmrzmGPcHPjCbnSQmw
         d6dcTZRf5X+UOP16alnBlvQvv1egiqTIIMUgUF8sg2+VPHDenNaYlTN3zv7C484oQX
         FCxOF5oNxgkIKRgDTU9e9jYRTiNHQ2coe6IgP9eLou8x7qMNzpQOYZLprH4OBU4WRs
         QirtSi8SZQLl9WomZU1RGSbbGeeEUDQN11jfxfpAXODrNvfSclT2PodZPEOiVZf5mn
         20kL0E+yoPsbQ==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id Us0Oqp5IhcyvuUs0OqJgRO; Sat, 12 Aug 2023 17:02:25 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=64d7bb21
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=1Zi1GwhLliC9LZjixaAA:9 a=QEXdDO2ut3YA:10
Message-ID: <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
Date:   Sat, 12 Aug 2023 11:02:24 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-CA
To:     linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org> <21975186.EfDdHjke4D@pip>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Alejandro Colomar <alx@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <21975186.EfDdHjke4D@pip>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfPRVstqGgpHq61mAmfK5/zKjVABSR/xu6O2p3Ecfmfyk/3g6LvvX+GCAQ8BJtOI1haYJ4kRjAU7WoKKZqzzxMijJwCI4pMW/3FpAQ1tWycpN9sM6cZPA
 ArxymfvZX+iwM9mh0Dr8mpECdC75lX4ibXcvgTmZTlwyabXPd6aS6RBux1QY5as1tK2YvzzT+p7VNKQHRLVOtA2A4hsO24XsMRgNaeU74S+gsVY57Hfr+Bwh
 vT3krVmAB1dh8lX0PlNm+pF0g27j+AMNtev0rZRI3FA=
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-07 17:14, Deri wrote:
> On Monday, 7 August 2023 09:45:22 BST Alejandro Colomar wrote:
>> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
>> for 1.22.4 which should be removed after the release of 1.23.0, so it
>> seems that the time has come to chop a lot of stuff from there.
>>
>> Deri, would you mind simplifying the scripts assuming a Build-dep of
>> groff(>=1.23.0)?
> 
> Hi Alex, Brian,
> 
> I have done some work on building the pdf. One improvement is any warnings
> output by groff, i.e. use of the deprecated .PDF macro, now identify the
> particular man page and line number accurately.
> 
> I have attached two new replacement LinuxManBook directories. The first,
> 1.23.0, will run on a stock groff 1.23.0 system. The second, 1.23.0+, runs
> with the latest gropdf which has a number of advantages for this project - you
> will find the resulting pdf to be more than 5mb smaller, and the page numbers
> in the overview pane match up with the page number at the bottom of each page.
> 
> The file NewGropdf.pdf contains description of some of the features in the new
> gropdf.
> 
> Both of these should continue to work if the groff version changes, thanks to
> Brian's helpful suggestion to include /usr/share/groff/current in the font
> path, but I have achieved this by specifying it in an -F flag rather than
> patching gropdf.

Nice work Deri!

The official 6.05.01 book hyphenates words across page breaks more than standard 
1.23.0 and new 1.23.0+ gropdf books.

File sizes are official 6.05.01 ~13.3MB, 200k more than standard 1.23.0 ~13MB, 
which is >~5MB more than new 1.23.0+ gropdf <~8MB.

I now see page footers on all pages!

I noticed that new 1.23.0+ seems to set some lines, especially tables, a little 
tighter (perhaps because of space handling), but *only* the first page 
"intro(1)" has half the normal spacing from the page header to the first heading!

[I also noticed that *poppler* `pdf2text -layout` (used to diff the content amd 
layout) prints the .SH NAME and options dashes as en-dash from the official 
6.05.01 book, but prints minus from standard 1.23.0 and new 1.23.0+ gropdf.]

I notice a number of widows and orphans, but that may be the man macros or groff 
commands not checking for sufficient space left on the page before rendering 
text: allowing 4em before heading spacing, 3em before para spacing would 
probably help, at the cost of larger bottom margins; and groff footers need to 
allow extra space to prevent widows by allowing them to intrude.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
