Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 263182B3E48
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 09:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725904AbgKPIHX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 03:07:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727132AbgKPIHX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 03:07:23 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBC75C0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 00:07:22 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id h2so22855503wmm.0
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 00:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=biYkPwcmTHuiXkyK9CkqDI1Bu5pPnIJ2aoh48hkKlLw=;
        b=AAzUz568o044ZPWoqOsIJf20PSbLDngUTt4md9f1NAFgwvIpePRlAtCjNuRfePEyNc
         xMbbTX1U3UvVjmO4o7knrwfND+BPG0WvoaGbf6jKTu17x8QxpYW+mtyC1EVyQ90Zset9
         yzqC0DDLji/EEKk+3Xz2G9+5FE799HZsTqa8fKO1r3f5GyQI4waMANrRDArQvWx23hRD
         9a2PjwhG29CG8qadrmwcGpvaYKoF1dOzop01f9OpdDkkvaEA3fnkNYhfpgPIFooTeOs4
         GLx2aw41AHwHa3EzkfHomvgYvNn9I5tCX8WUiC8Dw0qH3Six6I1rfU5ZjROwUXo3fYRn
         mzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=biYkPwcmTHuiXkyK9CkqDI1Bu5pPnIJ2aoh48hkKlLw=;
        b=trv8i5eN1aUMDAeFEtg3ntATtYJ+EwDqKUoiMrEf2FfUsF1T1civY0w6xms76xHGKC
         77A4b2m+1DbaWH2Fhh7L9AbKBmd0W2NyB0Gra/q1oYHsNidCWukyfye3jisWh8/QWcON
         /Z39iJYaC41VR2eHFOEzs4Th4Z0lgKWStAEcTr116G9y3MxWG2jDPkkCTucSguvsuoLK
         dKTAo1zJ5WpwN9a4f5z21G/ngMRofnGVMLu+X3B7NcIIg9ao9vy6bpxFZoKa2Axp9wSx
         0TncbehCJyctNUOIHPSeZBJRwp24zxfqto1egcl0el3fJyVOoRjU1vJKhnoMcbW+148U
         HYBA==
X-Gm-Message-State: AOAM532Fn7GW2Jq48kZ0EBF7YLIodki7UxoMWb1T6dMZVOHq5wU9f1+9
        DbhzHx6fIW81dFCZ0De4Db00+jAG3+ncsQ==
X-Google-Smtp-Source: ABdhPJyDTUHTOv0rJ7HgeH6/KGAckOgcwSYfAOXZZX7iLJHUTgEVaaEuyXAvhwgO3cxooWxZ3siaQg==
X-Received: by 2002:a1c:b487:: with SMTP id d129mr14562829wmf.38.1605514041270;
        Mon, 16 Nov 2020 00:07:21 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id g186sm30319770wma.1.2020.11.16.00.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 00:07:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] Add script to get modified pages for commit msgs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201115230807.1994-1-alx.manpages@gmail.com>
 <20201116001634.3663-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f3253576-63e6-1540-5a07-9b71a10c42e2@gmail.com>
Date:   Mon, 16 Nov 2020 09:07:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201116001634.3663-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/16/20 1:16 AM, Alejandro Colomar wrote:
> The script can be used this way:
> 
> git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"
> 
> And then maybe --ammend and add a longer message.
> 
> This is especially useful for changes to many pages at once,
> usually when running a script to apply some global changes.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Hi Alex,

Can you resend with a copyright notice in the file.

Thanks,

Michael

> ---
> 
> Now it will also include new files and deleted files.
> 
>  scripts/modified_pages.sh | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100755 scripts/modified_pages.sh
> 
> diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
> new file mode 100755
> index 000000000..c6bc064a4
> --- /dev/null
> +++ b/scripts/modified_pages.sh
> @@ -0,0 +1,27 @@
> +#!/bin/bash
> +
> +## Usage:
> +## git commit -m "$(./scripts/modified_pages.sh): Short message here"
> +##
> +## How it works:
> +## 1) Read git status.
> +## 2) Staged changes are always before "Changes not staged for commit".
> +##    Cut from that point to not include pages not staged for commit.
> +## 3) Keep only lines containing "modified:" or "deleted:" or "new file:"
> +##    (each of those is a changed file)
> +## 4) Keep only the path, replacing git text by ", ".
> +## 5) Keep only the basenames of the files in 'man?/'.
> +## 6) Remove any newline characters.
> +## 7) Remove the comma before the first file
> +##
> +## The result is a list of all files with changes staged for commit,
> +## separated by ", ".
> +
> +
> +git status							\
> +|sed "/Changes not staged for commit:/q"			\
> +|grep -E "^\s*(modified|deleted|new file):"			\
> +|sed "s/^.*:\s*/, /"						\
> +|sed "s%man[1-9]/%%"						\
> +|tr -d '\n'							\
> +|sed "s/^, //"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
