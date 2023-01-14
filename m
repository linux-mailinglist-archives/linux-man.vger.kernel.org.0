Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39C9866AE3D
	for <lists+linux-man@lfdr.de>; Sat, 14 Jan 2023 23:03:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbjANWDk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Jan 2023 17:03:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbjANWDj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Jan 2023 17:03:39 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D84C5B94
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 14:03:37 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id bk16so24098846wrb.11
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 14:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=z/P7lBMGdEaCEGFcDzCNc8dd9atr3bYTb6S8JCtfDLs=;
        b=n4w/AaJtw660ebHFUDcSgPCWdwpPS/rMWN07RVFBI8URzVEX1AIm62CCBIHjwn5YJ7
         DDY+5dam1pfPNAbOrgUy36FtVjy7tkj2Mp7OoEogwiydJNVd9K58QEbBNhqvj7qxUK8H
         tRlrZ2hg+NwiwaDKXCEQDqVIHwoJyRHXYsLF+UdckBtRIN65qVrtC3Q9EkPJGVjNtVw4
         oMXUdN2qrtMH2vQudSSkiODNbBOHdLg0ANGf3Tld4pimFk3aprXktZpu9Z8Ndl8DDP3n
         kon+MHEguTi5yneGfgwv3ocM+HkO/2KWicDLxl+RiyM5vhIEA/uQ4pAgImoljYGlrJBW
         eFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/P7lBMGdEaCEGFcDzCNc8dd9atr3bYTb6S8JCtfDLs=;
        b=T5eKRx0JZtBtHQU8PDQWl+8swTOfklq7XQUeZXoBepO6yG+mrxR6deZZBeAU+LgDcj
         RgyP2wMIOomxF7WO2DaR6K3EwhrPe6dDLFq9fT19bMFrbmBdVAChDY0Pnd7a2peUbzvR
         SgT6X7b+BBBPGB3BBaKZBqHnRhYJzCI1bEFyKSdDSNcNi4GAOs8jyLLKHifPMkyMR6mb
         iIOA9S+dqXizGL7Hna9jKivK8G1BiGVTIzQPB+PNCegjQTPcw9PoyVjcKfOoL1xzmv/z
         CTotkwMWWcg0JwquIKU8yQGMzrgFvzYwoacA7HpGg3ZmOWVXLuhQADqM3RoOJc3P656b
         ZkgA==
X-Gm-Message-State: AFqh2kph8qUKxnkNiuYIQWvuVT+LieDrglAHMstG6wVSAOc8j2IFmL5B
        yL2RwsB38RqV6kfWsRdziXq5HeDqrkQ=
X-Google-Smtp-Source: AMrXdXvFBf9Y8KBxIZG1zywdrhbK2gmb9fO714r0cAx14XZcIz0Q0uT/6viaPwsaWR4sf1JAKPXpsQ==
X-Received: by 2002:adf:f74c:0:b0:2bd:e960:9850 with SMTP id z12-20020adff74c000000b002bde9609850mr3741946wrp.0.1673733815406;
        Sat, 14 Jan 2023 14:03:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c18-20020adffb52000000b0025e86026866sm26307369wrs.0.2023.01.14.14.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jan 2023 14:03:34 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <fd3af7b2-5ffa-bee1-4644-f102075f7102@gmail.com>
Date:   Sat, 14 Jan 2023 23:03:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Question about makevarescape.sed in groff-1.22.4 tarball
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff@gnu.org
References: <BYAPR15MB3064D2D4AE7968ACDDDA415B98C39@BYAPR15MB3064.namprd15.prod.outlook.com>
 <20230114051626.ag5nz2mfzsmonvh7@illithid>
Content-Language: en-US
Cc:     "Thaddeus H. Black" <thb@debian.org>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230114051626.ag5nz2mfzsmonvh7@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 1/14/23 06:16, G. Branden Robinson wrote:
> Hi Mike,
> 
> At 2023-01-14T04:49:08+0000, Mike Fulton wrote:
>> The last line of the makevarescape.sed is:
>>
>> ```
>> s|[^ ]/\+|&\\\\:|g
>> ```
>>
>> I do not understand why it is making the change it is,
> 
> It is adding hyphenless break points to file specifications and URLs.
> This is mentioned in the groff_man(7) page.
> 
>                When rendered by groff to a TTY or PostScript output de‐
>                vice,
> 
>                       Contact
>                       .MT fred.foonly@\:fubar.net
>                       Fred Foonly
>                       .ME
>                       for more information.
> 
>                displays   as:   “Contact   Fred   Foonly  ⟨fred.foonly@
>                fubar.net⟩ for more information.”.
> 
>                The use  of  ‘\:’  to  insert  hyphenless  discretionary
>                breaks is a groff extension and can be omitted.
> 
> The overall function of makevarescape.sed is explained around line 825
> of the "Makefile.am" file.
> 
>> but if I do
>>
>> ```
>> ./configure --prefix=/Users/fultonm@ca.ibm.com/Documents/Development/mine<mailto:--prefix=/Users/fultonm@ca.ibm.com/Documents/Development/mine>
>> ```
> 
> This looks like it might have been double-pasted...is that right?
> 
>> On my Mac, or a similar type of line under z/OS, then the man pages
>> seem to have strange escape sequences added to them.  For example, on
>> my Mac, this results in the line:
>>
>> ```
>> .I /Users/fultonm@ca.ibm.com/Documents/Development/mine/share/groff/1.22.4/tmac/\:tty\-char.tmac<mailto:/Users/fultonm@ca.ibm.com/Documents/Development/mine/share/groff/1.22.4/tmac/\:tty\-char.tmac>
>> ```
>>
>> Being generated in the ./src/roff/nroff/nroff.1 file
> 
> Maybe it wasn't double-pasted.  If not, then I feel like a ./configure
> prefix setting of this complexity was not anticipated by groff, and
> possibly not by other software using GNU Autotools, either.
> 
> Please confirm:
> 
> You can
> 
> cd /Users/fultonm@ca.ibm.com/Documents/Development/mine<mailto:--prefix=/Users/fultonm@ca.ibm.com/Documents/Development/mine>

Wow, if this is a real pathname, I guess it's time to ping Thaddeus about 
filename.7 :P

<https://lore.kernel.org/linux-man/YW2hzL5vDfVZIAXY@b-tk.org/T/#u>

> 
> on these systems?
> 
> Regards,
> Branden
