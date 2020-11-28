Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E5392C722F
	for <lists+linux-man@lfdr.de>; Sat, 28 Nov 2020 23:06:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733220AbgK1VuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Nov 2020 16:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731531AbgK1Sw6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Nov 2020 13:52:58 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D069C02B8EF
        for <linux-man@vger.kernel.org>; Sat, 28 Nov 2020 01:02:48 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id i2so7982635wrs.4
        for <linux-man@vger.kernel.org>; Sat, 28 Nov 2020 01:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vLV3qFBuvjYjsCvoipCQgNW2D42jP9DYcHT4H0SDiw8=;
        b=I6FDcdqKNJeDs/kYX0k5QI+bJB4AUlzmqYAUlwAwrhUZ7Rrco0nw3ZBBfnq2rNb3jx
         xUBt8Nhb9Vj7nxZ5vm2CKsQm825Ygvp/VhU6e90+djRiePTjGoSva864PepGy2kO09IM
         T6zmJXXPFp7Hp6EQU2wo0vPw6PVPnA/puVB1pW8Yl1abN1KfKiG/Al0NQMscyWC4K0Fg
         pxNaXIWEJtVx0NRmbk/6P9YyV/Mwc2HIIb08MDCvY5o1vt5F+AG7eWI9qvOUlgGvehTp
         B/+WzvjQWzNooInLs6zUs/XM1ylN9lPJvHOYMOeMeaogghItcB1fthSnpP6R6HqESpIJ
         liCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vLV3qFBuvjYjsCvoipCQgNW2D42jP9DYcHT4H0SDiw8=;
        b=TFseebMokRVN449HQU3BUNyJwVfJx/jJxUCfd9pl6LCUMt05N2NNZjBvueH6CneK60
         MSGhUSw+RBTx/hjv+aMGUcTOGlNSG0f5lkQVobupzwsqtGFUiJ7/HoWZ+JG5LaEIgL1t
         waNqWmPY9k7e+6VpxZVArJQh+HR+sxYqdBsIK8Ye9IOm+xWcgN6tLUCQFUm3sZcHQWZq
         Z0BAGXvDteHHvg5Yoyby5s17WP2QRxiR1HkTZs4HX3+wu3eoWNCchMfcDQTc1N3LF/10
         RjJk/vk4b33TB+nWqx0EN1SdWwbjg28eQwsb74tPD6PX7IQAbFGhzybuVUOhsJdEXGYW
         wfTA==
X-Gm-Message-State: AOAM531CTylkhP10qr6wGJbpdYetnCyUWFcCNV8JaZYejaEKoj10Pi0d
        XIdr/PvoMbjr/uGj5qc8MFM=
X-Google-Smtp-Source: ABdhPJz9ldYF285bQLhUxvfUW2JRtxvzKEdxpjJuSnwQp+8xwJEqfZkxHeRdF8dET+QG+asx6p/yuA==
X-Received: by 2002:adf:e509:: with SMTP id j9mr16434437wrm.354.1606554167072;
        Sat, 28 Nov 2020 01:02:47 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id d8sm16177544wmb.11.2020.11.28.01.02.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Nov 2020 01:02:46 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: strnlen.3: never beyond s+maxlen
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
References: <66a3e04d-b70d-4c55-ea2c-37175753a2e7@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bf58251f-1d06-6722-7a02-23ebd96f381a@gmail.com>
Date:   Sat, 28 Nov 2020 10:02:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <66a3e04d-b70d-4c55-ea2c-37175753a2e7@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/19/20 8:42 PM, Heinrich Schuchardt wrote:
> Hello Michael,
> 
> the strnlen.3 manpage has the following sentence:
> 
> "In doing this, strnlen() looks only at the first maxlen characters in
> the string pointed to by s and never beyond s+maxlen."
> 
> This sentence is self-contradictory:
> 
> The last visited character implied by "first maxlen characters" is
> s[maxlen-1].
> 
> Given that "beyond a" does not include "a", the last visited character
> implied by "never beyond s+maxlen" is s[maxlen].
> 
> A consistent sentence would be
> 
> "In doing this, strnlen() looks only at the first maxlen characters in
> the string pointed to by s and never beyond s+maxlen-1."
> 
> I would prefer
> 
> "In doing this, strnlen() looks only at the first maxlen characters in
> the string pointed to by s and never beyond s[maxlen-1]"

Thanks, Heinrich. I changed as you suggested.

Cheers,

Michael

diff --git a/man3/strnlen.3 b/man3/strnlen.3
index 6c4b080fc..d4385af49 100644
--- a/man3/strnlen.3
+++ b/man3/strnlen.3
@@ -54,7 +54,7 @@ looks only at the first
 characters in the string pointed to by
 .I s
 and never beyond
-.IR s+maxlen .
+.IR s[maxlen\-1] .
 .SH RETURN VALUE
 The
 .BR strnlen ()



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
