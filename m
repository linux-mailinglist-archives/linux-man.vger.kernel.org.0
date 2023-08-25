Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5BC57884A6
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 12:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240672AbjHYKT6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 06:19:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244388AbjHYKTo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 06:19:44 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4877D212C
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 03:19:10 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-31c8321c48fso94838f8f.1
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 03:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692958748; x=1693563548;
        h=content-transfer-encoding:in-reply-to:references:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dZHK+WvDSRhQQ2O41H6J3OnZ/wRQjIg5YdbPD/LvnlQ=;
        b=r40dptDN58Gw8nPtcD2C2RTzDwFztvkwY+d47U/tdgSDrFbqwQX19EoEnYOuJgAEhh
         qXwuQqaewzeOpSLj1aPBgu/kn+PKK1Hc1AegE+Y7z2Csw9NUjEMvaSHe1kqaE+S4SJtb
         iqRwMAI7jTJWrw/FQ5M5U68LLdJGFFzoHYb5wIce/5UWt/fs/gpl94qviyj+MyX55DqJ
         v/XTt6hBeClOE2jO5zDzo5/cFA724KIV4lh4RJRWH//JUEyiJPkx4GDaigA116CU9l1g
         F7sTyB3nW/gAxmKxZxaFyueXZ3E69RZOcLWn1G+v/dAchCcjOx//yQCY3XjYHuaa8gFi
         ob8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692958748; x=1693563548;
        h=content-transfer-encoding:in-reply-to:references:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dZHK+WvDSRhQQ2O41H6J3OnZ/wRQjIg5YdbPD/LvnlQ=;
        b=f23nL0CSNv0QNvHp2CHUMwdoFHqTbWDeq2+xgbhhGs4sxRmfPUrRU8+LXomCEBPu5/
         k2o1Jg/+2Q2fFNGVt+amY32zVeuKtIgkZR37srYFgGRxN56eYqDkOWzvYPCcA3BhV1fh
         zHITF+Yk0vBsZb03MKBn4nbqLlPAQS2QFk4L9qI+mP6XVFdx+XIru3IwTu6Jy1uQJujY
         Obf6ZMgACtr6gJStdvDpo1+S6rulKqVRen1jn9ITLb8wIVnZ9zzUao8U7ss02+EwZsFH
         VOTkOZNnG3S9r//LE9yyJCc+0Q4sAV41XIb63odn1CbtvGxfqlosSKH4fOCZgkp0rQYU
         ONbA==
X-Gm-Message-State: AOJu0YxRpzHa0Ivjx1eu65Jdha29uMzL6KWIECrNJEs1qijykF1U+mwb
        AxuLR1r/INfrTA3VaWcSRusbmbyPqWc=
X-Google-Smtp-Source: AGHT+IENR/nuOuI/WktzUacMb70YXcZGQ/J7dvYaRzMojovjjQ8qilnx1oWWBsTkPPRah58Lg+nyAg==
X-Received: by 2002:a5d:5272:0:b0:313:e391:e492 with SMTP id l18-20020a5d5272000000b00313e391e492mr17499270wrc.17.1692958748256;
        Fri, 25 Aug 2023 03:19:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id u13-20020a5d514d000000b0031ae2a7adb5sm1767264wrt.85.2023.08.25.03.19.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:19:07 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <7a7d0ca1-865f-5e12-be0d-b21dcae9e2de@gmail.com>
Date:   Fri, 25 Aug 2023 12:19:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Reply-To: alx@kernel.org
Subject: Re: [Bug 217821] New: document that Linux' open(2) uses ENXIO in case
 of sockets, while POSIX mandates EOPNOTSUPP
Content-Language: en-US
To:     bugzilla-daemon@kernel.org, linux-man@vger.kernel.org
References: <bug-217821-11311@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217821-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Chris,

On 2023-08-25 03:07, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=217821
> 
>             Bug ID: 217821
>            Summary: document that Linux' open(2) uses ENXIO in case of
>                     sockets, while POSIX mandates EOPNOTSUPP
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: enhancement
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: calestyo@scientia.org
>         Regression: No
> 
> Hey.
> 
> It seems that under Linux, when using a socket file with the open(2) family of
> functions, the error is:
>> ENXIO  The file is a UNIX domain socket.
> 
> OTOH, POSIX specifies[0]:
>> [EOPNOTSUPP]
>>    The path argument names a socket.
> 
> 
> Maybe it makes sense to document that? Possibly right at the ENXIO descripton
> and even additionally in the STANDARDS section?
> 
> I could write a patch if you tell me which you like.

Sure.  Please check the ./CONTRIBUTING file in the repository.

Cheers,
Alex

-- 
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
