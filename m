Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 720302EEF26
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 10:09:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727963AbhAHJI7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 04:08:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727895AbhAHJI7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 04:08:59 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB88C0612FC
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 01:08:08 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t16so8262969wra.3
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 01:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o/+RwoqRhi2QUSlW5IGvxHHaL+qJqQ1zt8u52Anq1zA=;
        b=HRCiAME63iijqUSPsJOCvUx3KaKjYK5NR+yx94sziY+/326XvwZ609tHi+6CPnjr2a
         NtQsSCpEi/J1X84tKv9qcMVKqoiYegQW41q995BRQIevmC5cErBL20RkrehnL6U4BYoB
         nnhrOIrjIlRfFgdhQ5ARXNgjD0USKx1LrkZWxW1x4tG+ohuX5s+zhHH9I1s7InrmiVU0
         LNC6PLvk89ikiDnbPSLdckbKesu2IpktiRpsWuEJY/ynakeyq25JKbJ8vZH1/udZ53zN
         iHoTbU06MBiWiLkm0K83j3WbhEBFkMtyp1AwvhLgqES6KDycnq3UkHD/DrWfrdDLhQRW
         Op7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o/+RwoqRhi2QUSlW5IGvxHHaL+qJqQ1zt8u52Anq1zA=;
        b=MHsnjHnM1h/lXJ8P6I1ZlDv0OTc9DjJGATD63gK2JxEB1GpeYIZt7qwqj4yeTO72fL
         Meyg0IhTcS0BEeOFEYU0OZUsRoUKpA2dxiIoe0rHpubgR1UWsZvbioAgfkJ7zQl7vzAt
         KZ66K4SKFKfURjPU6QxO9jSl66yPu7+B5V/QyO5xAQJKuYLXcPEwAw6VT+BEql5uf8LD
         U7TIlyzACcfres2f8WDfJDzfdO1Gzg0dt7RI+ZciHiC9bSrQkvoLjdqcHSg6kJRwv2kB
         tiJPoV8e+zGjs47SBmax1EjTUDa6yUvByM0HPulxZn30KseOJDO4kH0MZ8LC9Je/WVmi
         ZcTw==
X-Gm-Message-State: AOAM531SswnBUihDTipgdMeS0ZwcILDm+NZrZrw44JWjFnOxrBBc0EKl
        dK0gOQpkOjqC6KQjQAcuW+ZiOV9yw+Y=
X-Google-Smtp-Source: ABdhPJyYWq5ElTi7QFI8wSXBjDlor7wj5xQnVFgcFjb+2EOR1g10IiUl5qW067F0AXqPiWx3zBKPdw==
X-Received: by 2002:adf:e704:: with SMTP id c4mr2610186wrm.355.1610096887535;
        Fri, 08 Jan 2021 01:08:07 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id y130sm12025674wmc.22.2021.01.08.01.08.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:08:06 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: keyctl.2: ERRORS: EINVAL: wfix needed
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <b319d144-b1e7-a662-4c68-73de42afad8d@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <66c0811f-b7ee-3831-271d-3eeae54b59a1@gmail.com>
Date:   Fri, 8 Jan 2021 10:08:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <b319d144-b1e7-a662-4c68-73de42afad8d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/7/21 6:28 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> Reading keyctl(2), I found the following:
> 
> (Around keyctl.2:1749)
> [
>        EINVAL operation  was  KEYCTL_SEARCH  and the size of the de‐
>               scription in  arg4  (including  the  terminating  null
>               byte)  exceeded  4096  bytes.  size of the string (in‐
>               cluding the terminating null byte) specified  in  arg3
>               (the  key type) or arg4 (the key description) exceeded
>               the limit (32 bytes and 4096 bytes respectively).
> 
> ]
> 
> It's hard to read because of [. size], but AFAICS it looks like two
> completely different errors (both setting errno to EINVAL), and
> therefore it should be two separate entries, shouldn't it?

Looking at commit ff91beca5bec550a7a16d9dfe2fd3f9210fbb06c,
I think you are right. I added another "[.TP\n.B EINVAL|.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
