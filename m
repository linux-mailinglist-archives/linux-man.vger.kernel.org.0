Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04D7F2FC147
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 21:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729365AbhASUiY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 15:38:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730475AbhASUhN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 15:37:13 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52128C061575
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:36:33 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id v184so937382wma.1
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=qVxnrepdw/dm+UkEnlaL76wxsE/gtr6lkkbqK78eemE=;
        b=gzxQQnBRCLUv1n+9/nwz4B+/Q7VJ5coDaiMhVvhsiy+eUU3brxEEx+ZY3aEabFoHYg
         MJiW3ssn7Vh9L3BL+jEP4G2Q3g3HuEUQRecw14k4iEmpJbtnyut+zod1HTylB3I22gwE
         xOi8KVa2Au6kXPmkS3KBR+/BZiwvFWh2hPok9IXPnYno36hlypL3zeSOqpkdemd2SgGo
         YO+ie6odN7b5kfiudelksg2aKL4tfCeWUd8b7vu9ltyt13gGeqxQwMWYhfewZjXeipFK
         PluObUOPESfEZ40HWn7ZT6qGuoC5/Q/Kq1W2FnaJCR8QVHedH1aUfUaFB0Iur08OWlH7
         5FGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=qVxnrepdw/dm+UkEnlaL76wxsE/gtr6lkkbqK78eemE=;
        b=E70Hte1E/7C89ZiI/eImQzv3X9GqCOpEF2vWDfdjeBH0ABhAlk32WUGSkRQ1kFdFsH
         +9ev+rmQVr1aQiGX904t8fmMNqfllT284HZNnyuq9wqakDR78I3hNAY8JXfWeHPwUzLu
         5ZeSuSfqiau36RjeqPu4R6HMjvQCZyTedPlfLSNoFVhdLItjvc2Hhs+ICoAgBP/bA3V2
         DgzRg2wm8Mp/csMLW7fJtT1lBP4IaJ6UBlapfB6M4bx13WNW4g4J5yOOmC3jDIqtlv7e
         63fxIfMhSF3pEX+2p1l+NzIUK6WCettDcv4w795EpwQ84oDd0VOMLlXaM0TxLG4BQ3DC
         aPog==
X-Gm-Message-State: AOAM533VDowM+ui2WaFKayjIBJvWyXrovtzbkqkxR+NZi2Y922UPzq6K
        +SbvnHFDi9DIFmEFA4eXth8=
X-Google-Smtp-Source: ABdhPJwQrrjuekaJTNl0RF/TzN/Sx694JcfvV9Kts0VnCaGKxbYA47sIKLCgGSGcw4E/VQASnmbXkQ==
X-Received: by 2002:a1c:2155:: with SMTP id h82mr1217300wmh.132.1611088592170;
        Tue, 19 Jan 2021 12:36:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id z15sm38587339wrv.67.2021.01.19.12.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 12:36:31 -0800 (PST)
To:     bugzilla-daemon@bugzilla.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [Bug 196513] environ.7: Document the valid values of pathnames
 for SHELL, PAGER and EDITOR/VISUAL
Message-ID: <fcda6ff1-1eeb-ac37-81f4-cc2caa4c12b9@gmail.com>
Date:   Tue, 19 Jan 2021 21:36:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Vincent,

I applied your patch (3 years later...).
I added a Signed-off-by field on your behalf,
and will forward it to Michael now.

Thanks for the report and the patch,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
