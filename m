Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35E2C2E2875
	for <lists+linux-man@lfdr.de>; Thu, 24 Dec 2020 18:53:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728455AbgLXRxe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Dec 2020 12:53:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726839AbgLXRxe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Dec 2020 12:53:34 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0FC2C061573
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 09:52:53 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id k10so2016624wmi.3
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 09:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=53HImB+Lr9SHKkJPlTo2oXSkj7jIWOx9dScPFmPCTdw=;
        b=SWhUWUmoG+nOmJdbTJGSodqKKeIt1FgSh2Rw4A+mEi26UDQew3AejDwm1fRp6XYK3r
         h/3zhyIhfNuxkCpmINFaF/XLzFtz6fGYee+GDDu8RQkWn6Bpt59vwStpYrH3hgvpd2Gu
         rBTLSUXvlLw1TmbEQRYoaCxpxUyi2AdoP8miPY7qQYgs66sas5uSdHWBwl/Dkq8ShYqd
         zf4D+5YaJMjJePzodtaDc86NPhpIm3kRmZeAjDGRQJKpCJ1nNygPqIXUKUUbZC6djo6S
         tAUwA7uNOxcmPVa5wxTA3q727bXrVaUC5VF8JCjCjZwq/3GdomVZ46TM01tYkc34N8Cv
         SNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=53HImB+Lr9SHKkJPlTo2oXSkj7jIWOx9dScPFmPCTdw=;
        b=qky2pp1rZmPgEQohNE6mSUkUIx4R2xr4XPuUgNAew9F+RjePTys7dr6oh7PHYTavFM
         rgcHtrryXPdXSeZGMeGxWguFTc17Kzdzk7dDZYLexq2Km0VyhIKDquXtyEwduJ7IbFLr
         85rf2tIBWhcr/KJ7t8Qe/Tr0iDYhKYzREaITLTWKl8EjMjxkS5u5yJKX64d2HtgC2rNW
         PcrTuZTQW/Oj7fsVai5Awmzn58RRuCMWQT53HmOPPTg2300eIv+JA7WiHkVMPFg2AiQV
         hqyItYTmbI9N706gogRFOVIvWkDmOWAHSJedYaiwmgcaHQdQgci5hTbALdpdRK7dc3Gc
         ZEXw==
X-Gm-Message-State: AOAM533+64BY15FLQHgl1F5acNEkO3V3fkj9Z9muxI/v5r8IctLIyo+n
        ZDZVS7llRzUprEisWkwQ6wLUdg==
X-Google-Smtp-Source: ABdhPJww24/u1w0Owz5uCek5vJYSKQiXeG2G+VOf7RjBVLLVhuL52Ta0BT+JbxH/tnaVGlzRgZazNg==
X-Received: by 2002:a7b:c770:: with SMTP id x16mr5279829wmk.139.1608832372288;
        Thu, 24 Dec 2020 09:52:52 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id u83sm4613711wmu.12.2020.12.24.09.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Dec 2020 09:52:51 -0800 (PST)
From:   Jonny Grant <jg@jguk.org>
Subject: readlink
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <79e09e31-c33e-3fbf-158b-30344e7aae68@jguk.org>
Date:   Thu, 24 Dec 2020 17:52:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Seasons greetings Michael,

May I ask, could readlink be updated to use the same wording for null termination like on sprintf, scanf etc?

https://man7.org/linux/man-pages/man2/readlink.2.html

It says:
 "readlink() does not append a null byte to buf"

Perhaps it should say:
 "readlink() does not append a terminating null byte to buf ('\0')"

In addition, is it worth adding a BUGS section to remind that there is no terminating null byte?

"readlink() assumes the caller understands that no terminating null byte ('\0') will be written in the provided buf. If the caller didn't memset the buffer to ('\0') or allocate an extra byte for the terminating null byte, there is a risk the caller could overrun the end of the buffer, or use uninitialised values in the buf."

Finally, perhaps also the EXAMPLES program could be updated to clarify this:

"/* print only nbytes of buf, as it doesn't contain a terminating null byte ('\0') */
printf("'%s' points to '%.*s'\n", argv[1], (int) nbytes, buf);
"

Kind regards
Jonny
