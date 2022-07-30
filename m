Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECE9585AAD
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 16:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232942AbiG3OOO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Jul 2022 10:14:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231592AbiG3OOO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Jul 2022 10:14:14 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E2865B6
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 07:14:13 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id v17so8807536edc.1
        for <linux-man@vger.kernel.org>; Sat, 30 Jul 2022 07:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:user-agent:date
         :message-id:mime-version:content-transfer-encoding;
        bh=5SdHjCKR4BiRcYvt958gbawzAsRuee/eTg6UmI5A7vE=;
        b=Q3zjgiNKb9D6US0UrFYyoTaXKo+cNJmcuKGKR3BdhHwEygsm6AlLfLok9lHBdEv3Kk
         VlXrjcfmjs3n7VjKGD3rWLw2ExNp6kkvXIXIRuiXqCLF3Ml7S/AUB9rxdtvcLsy3/4lU
         +5QX0UNupnbzatJT8P4NR9HADnl1b3fF+baJrw1a+KlWY9dAu0MsHMoMyeksDG5/2vQ2
         UCk0ezLYwMA0Cmzcuc5rHwawFIhwUCOI55WSWXjJF7C40w7OvacsBCpl8u329swLpK8l
         09oV/Xn10IlJdZepo0ZJT8yjivdTaCYiwTLnArxBV8BHJAwHVFoO/YhN8LX0KmB5cVb5
         zjNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding;
        bh=5SdHjCKR4BiRcYvt958gbawzAsRuee/eTg6UmI5A7vE=;
        b=PF5pbeCy99RWA0Hdn1EbvhCXFAjSoIN/yntSCnWdf8vGpDeepGPCthewPNzOyeDDkK
         CrUqRkVCt2VBYaGgBSIOVp3K2KYrqxwGPi5mLQ90jXWKe0ZCLjhLbiG0QYZ93BF/8fPa
         cGdZpub99UI/ORlPhAR/NhzweT8UGP4KXr8nlfw/PLcoGWMQXnJ9dsbTr4Shs+6qXq3B
         ScsIye/DfJFfGgUnsFYPAM534qSanEh9xRa0TERtXIkfue9McNEzb1zpaPLU/Iwul1ZI
         36CZ7wnEiFcpDCE40RA52R1Wglx9ZL3BHo6R/WWhiKotG5PbyjPSU1u4rPPmeetM0x0K
         qaYQ==
X-Gm-Message-State: AJIora/AYUPmyQAMM7g/2bNBEn1ZvqsTU/afp1h6+gHH9R/4LyylX0Fy
        Y/z7hKN1ytQF0T3L2L00TodeRUrK370=
X-Google-Smtp-Source: AGRyM1sFt5BfPwBGOBhkgFrukNFMELhLnua0vIyw3JUK1fwZySpE9Su5k7md8dsh8EpHy/WFRSf18Q==
X-Received: by 2002:a05:6402:48d:b0:43a:cccd:89d9 with SMTP id k13-20020a056402048d00b0043acccd89d9mr7950026edv.257.1659190451922;
        Sat, 30 Jul 2022 07:14:11 -0700 (PDT)
Received: from localhost (internet-185-112-167-60.cznet.cz. [185.112.167.60])
        by smtp.gmail.com with ESMTPSA id o5-20020a056402038500b0043cfb6af49asm3823672edv.16.2022.07.30.07.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 07:14:11 -0700 (PDT)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 4/6] xattr.7: wfix
In-Reply-To: <20220729205823.lcy4fbezlw32owgu@illithid>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
User-Agent: Notmuch/0.36 (https://notmuchmail.org) Emacs/29.0.50
 (x86_64-pc-linux-gnu)
Date:   Sat, 30 Jul 2022 16:15:21 +0200
Message-ID: <20220730161521+0200.203910-stepnem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hello Branden,

On Fri, 29 Jul 2022 15:58:23 -0500
G. Branden Robinson wrote:

>> -The VFS imposes limitations that an attribute names is limited to 255 b=
ytes
>> -and an attribute value is limited to 64\ kB.
>> +The VFS-imposed limits on attribute names and values are 255 bytes
>> +and 64\ kB, respectively.
>
> While you're tidying this up, I would convert the `\ ` escape sequence
> to `\~`.  Both are non-breaking spaces, but the latter is adjustable.
>
> groff_man(7) from groff 1.22.4 says:
>
>  \~     Adjustable, non-breaking space character.  Use  this  escape  to
>         prevent  a  break  inside  a short phrase or between a numerical
>         quantity and its corresponding unit(s).
>
>                Before starting the motor, set the output speed to\~1.
>                There are 1,024\~bytes in 1\~kiB.
>                CSTR\~#8 documents the B language.

Thank you for the review!

I think I disagree: IMO a number+unit should be treated as a single
entity both semantically/logically and typographically (at least as far
as space stretching goes), i.e., say (if I understand the effect of '\ '
and '\~' right),

  255 bytes               and                64 kB,          respectively.

would make a bit more sense to me than

  255        bytes        and         64         kB,         respectively.

Current Linux man-pages usage doesn't appear quite consistent, but '\ '
prevails over '\~' (about 6:1), and my cursory grep found only one
instance of '\~' used between a number and its unit (vs. many instances
of '\ ' in that context).

In view of the above, failing any instruction from a man-pages
maintainer to the contrary, I'd prefer leaving this as is.

  With best wishes,

  =C5=A0t=C4=9Bp=C3=A1n
