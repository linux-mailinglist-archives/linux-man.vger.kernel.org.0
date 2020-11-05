Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8D602A81B2
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 15:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730822AbgKEO7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 09:59:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728371AbgKEO7u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 09:59:50 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A646C0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 06:59:50 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id b8so2133128wrn.0
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 06:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sT9/Gf22HMFM0vR9ya+uS02t8ce6v04FGnA35ejdSrM=;
        b=Dd1v5bLzTK8Ec8pfuIoG2/4Hg0iVBZn+zAJsLQJgROHNdVFD5VURZgLKqCf+vKAo/t
         W6DN0q9wPWI1tmpgq1LNV+r0d1KwYglA8YCpKDXnTjhiI+VNqKLJQRu65tLJFAjlPiUm
         CML79iBHPGVfnoC58Ab4jaLWXeplzSJsJwsARSSv6RZJO/9bAgCA1ckGNzP5vn5hiXDG
         udFEWQmn7GEJYeUtkbP9wEoMbnpGLyxucTRgzU1/Lj6BOnXLz1kDY1J3LVGLTk4MwNoy
         h1aHUBL71qCjJom75xGtDQRPOmBeCeJI3hCojeHaeuQi7hWW2L31OIUunFTVUSwiNdS5
         cA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sT9/Gf22HMFM0vR9ya+uS02t8ce6v04FGnA35ejdSrM=;
        b=fZ4Pn1ag3YguNuF1ydU7PtsS9MbfTj6XGQ4oqYm/n2F7G7fkMFQzfup6rMGwTOG7bf
         yIITgUPsjJvUIEYny/ylBG1/911SnCgZyepWP66BXeB7fQ45ACJw0vPHzka8vMSl8Z85
         /QITBalFUjVWDzzb596//QXTXatZn+41iohwQTUfsrvvvU/rUqegat4Vs0sVCs5uj5pQ
         7l3DmgJCbfYf4gm5U+nZ7jRwG0KY0aYrnzJgXrqiCP1u76R/U9BREJJFAFnMhMBdfJ5K
         qBaomqBbdQOn8CNe8vXhY3jmd4qowNvYJSh6hdnb95Ztw4w385eaCUWaVZx2nuyHIEY1
         xFNg==
X-Gm-Message-State: AOAM530DPK1QTVakKLa0tyVp0R02ikNCUhY7Oc9OBr6m7g4EpxvBhDee
        2PGK6TmLWVT8zMOGFwu2j/ICIs02mZs=
X-Google-Smtp-Source: ABdhPJxvTvnhGDc8+fCujwYSZzQmf4RImitt4zDJs9o2Xa2oM+a0z0168cp7BHZq2bwT/5u4aQD6Vw==
X-Received: by 2002:a5d:494c:: with SMTP id r12mr3374567wrs.406.1604588389028;
        Thu, 05 Nov 2020 06:59:49 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l124sm2917873wml.48.2020.11.05.06.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 06:59:48 -0800 (PST)
Subject: Re: Format inline code
To:     mtk.manpages@gmail.com
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
 <CAKgNAkhe-YN9MF2epm8_Qqi0b2Vp+YkrURQHduYz8+B6KfMiQQ@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <eb1afb92-9327-43e4-c4bf-6593289c9c3d@gmail.com>
Date:   Thu, 5 Nov 2020 15:59:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhe-YN9MF2epm8_Qqi0b2Vp+YkrURQHduYz8+B6KfMiQQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-11-05 12:36, Michael Kerrisk (man-pages) wrote:
> So, suppose I want to produce output as follows, where XXXXXXXXX is
> the start of a hanging list (.TP):
> 
> [[
> xxx(2)                     System Calls Manual                     xxx(2)
> 
>         XXXXXXXXXX
>                Lorem  ipsum  dolor  sit amet, consectetur adipiscing elit,
>                sed do eiusmod tempor incididunt ut labore et dolore  magna
>                aliqua.  Ut enim ad minim veniam, quis nostrud exercitation
>                ullamco laboris nisi ut aliquip ex ea commodo consequat.
> 
>                    int
>                    main(int argc, char *argv[])
>                    {
>                        return 0;
>                    }
> 
> zzz                                yyy                             xxx(2)
> ]]
> 
> The way I currently produce that is markup something like:
> 
> [[
> .TH xxx 2 yyy zzz
> .TP
> XXXXXXXXXX
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
> enim ad minim veniam, quis nostrud exercitation ullamco laboris
> nisi ut aliquip ex ea commodo consequat.
> .IP
> .in +4n
> .EX
> int
> main(int argc, char *argv[])
> {
>      return 0;
> }
> .EE
> .in
> ]]
> 
> Downside: in the above, I need to know whether to use .IP or .PP,
> depending on whether I'm currently in an indented text block.
> 
> I think you are suggesting that instead, I could do something like:
> 
> [[
> .TH xxx 2 yyyyy zzzzz
> .TP
> XXXXXXXXXX
> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
> eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
> enim ad minim veniam, quis nostrud exercitation ullamco laboris
> nisi ut aliquip ex ea commodo consequat.
> .RS
> .PP
> .RS +4n
> .EX
> int
> main(int argc, char *argv[])
> {
>      return 0;
> }
> .EE
> .RE
> .RE
> ]]
> 
> I agree that this works, and has the virtue that I can consistently use
> 
> .PP
> .RS +4n
> .EX
> ...
> .EE
> .RE
> 
> everywhere. The downside is that I have to add an extra .RS/.RE pair,
> and that's quite a bit of mark-up to add each time (to a construct
> that is already quite mark-up heavy). I don't totally object to the
> extra mark-up, but it would be nice if there was a way to accomplish
> the desired result (consistent mark-up everywhere) without requiring
> su much mark-up.

Hi Michael,

On one hand, yes, it adds some lines of markup, i.e., a bit of noise.
On the other hand, I just see .RS/.RE as {/} in C scopes:
they clearly delimit logic blocks of text,
and also help in greatly reducing the quantity of .IP needed,
needing only .PP for most things, which simplifies logic.

Choose your poison :p

Cheers,

Alex
