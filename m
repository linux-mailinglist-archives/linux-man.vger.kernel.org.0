Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80485712A86
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 18:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236450AbjEZQVx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 12:21:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229833AbjEZQVw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 12:21:52 -0400
X-Greylist: delayed 1483 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 26 May 2023 09:21:48 PDT
Received: from smtp102.ord1d.emailsrvr.com (smtp102.ord1d.emailsrvr.com [184.106.54.102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E646BC
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 09:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1685116625;
        bh=Vl0LEKXXPwCJQh89XjvpmIEFMksHRoHT6ivMqLgaBLY=;
        h=Date:Subject:To:From:From;
        b=ni6IUiEov1JEWBw+qIYmSvsEonOoeE9bVgk7VJ8ODSXbJr8X8PkbKXtQ0sPPU57ox
         ovBkjjwiRqDtis81W5EKvbVnTH/DWMuxrX0poRmToo36mv0vJaVdqpWeb3/Ua5N4U1
         ytj6wnWIj8dTSOTHZ86EaNH+hr23umXuT1tF4xOs=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp13.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 8A7DEC0139;
        Fri, 26 May 2023 11:57:04 -0400 (EDT)
Message-ID: <9e01f0fe-137d-4e5d-6151-a2f4c3b91bd7@mev.co.uk>
Date:   Fri, 26 May 2023 16:57:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] fgetc.3: Describe handling of ungetc(EOF, stream)
Content-Language: en-GB
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230526151941.25428-1-abbotti@mev.co.uk>
 <903e67f1-6304-862b-7d8a-0ff5db965318@gmail.com>
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <903e67f1-6304-862b-7d8a-0ff5db965318@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 9fdfd40f-9ba4-429d-aed8-244c6600a33f-1-1
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 26/05/2023 16:28, Alejandro Colomar wrote:
> Hi Ian!
> 
> On 5/26/23 17:19, Ian Abbott wrote:
>> As per the C standard, calling ungetc() with the character parameter
>> equal to EOF causes it to fail, returning EOF.
>>
>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>> ---
>>   man3/fgetc.3 | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/man3/fgetc.3 b/man3/fgetc.3
>> index 75dcaeaf6..d6bf62327 100644
>> --- a/man3/fgetc.3
>> +++ b/man3/fgetc.3
>> @@ -62,7 +62,13 @@ A terminating null byte (\[aq]\e0\[aq])
>>   is stored after the last character in the buffer.
>>   .PP
>>   .BR ungetc ()
>> -pushes
>> +returns
>> +.B EOF
>> +if the value of
>> +.I c
>> +equals that of the macro
>> +.BR EOF ,
>> +otherwise it pushes
> 
> I would put that detail at the end of the description, rather than
> the beginning.  In C code, that kind of short-cutting can help
> reading, but in the manual, it's better left as a detail at the end
> of it, to give it less importance.

OK, but I think it would still need some sort of remark in the first 
sentence to indicate that it does not always apply.  Maybe something 
along the lines of:

   normally pushes c back to stream,  ...

Then add the c==EOF exception as a new paragraph along the lines of:

   If the value of c equals that of the macro EOF, nothing is
   pushed back to the stream and an error is returned.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

