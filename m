Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9DD2E3679
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 12:30:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727231AbgL1L3z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 06:29:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727035AbgL1L3z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 06:29:55 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C2B0C061794
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 03:29:14 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id v14so10120397wml.1
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 03:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=lPEq69F440EJYkRjGIIv7kgGFtdojWxoPq7ZSb3jSXY=;
        b=CvkD4epmz5n/uTM5Z4QW/moj5zcGtHSyUTQMkn+W7Xyzrs2Ajvsqa1KgOg8bw+f/4l
         tzBKvGi3cnyINil79fp8OQ1ZQ9odXffgo8mIAf3ZvPL/yrysCMZjstpnN0mWw2SyWE7F
         v0x/he06VMc7VxhUIp4H9p1Ex0XfzkxZI3yWUwIPSXGhpieMDSwt8U3M8lnhjDCiLIG0
         p1Z22IzodFyxdGdKhzXGEx1AMGTS3qv7EcthNxcLnaxy3R8Nagyr8/bkbr2XW2E+Xzey
         UeWQVMoYQpvpiQ0QWG7PBR+b/DDg3yWpPLuPEOXqIdFpxtaF1klfhMdlr+uco7BGVDZv
         Sviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=lPEq69F440EJYkRjGIIv7kgGFtdojWxoPq7ZSb3jSXY=;
        b=allkUaNeuFT92OlKm4nPiHVqFwhZDlCJRXoTsiaoC++zf2nxbw4Eoe+qv4bEjVtNmg
         tcV7+nVdMeL1Mi8WC1H7QFsCNIzOmwjs3c8Gp+zg4sdCIy5EWssXKB8ysbm5uX5DGrtj
         tZHImG4nIBs+5851Aofr+sQ1LexNIRaO+2qi8QsTEx+xU7YauVKMCmRfsyKIQjzV+8Hc
         JwgIRyT6rC6UGR3cRihod40elwoaghPrzmPBuJ9ypSuEGfgieV9py/Al8gXhlZGOaMhD
         mNx73Hv3x7vxk2ATDp4C4TffjsYRmvD1QYoL7fdo5KqBEjjG0kxTvX/bs4Z4fVxxBQ21
         Knww==
X-Gm-Message-State: AOAM530rAhPFsg5jYY1b1n2uPD2S4x9dIfSWqOSdeSQjrXhR7DCI9401
        MnbfvldauGr6KkKqbUF+raSNwNGqBIA=
X-Google-Smtp-Source: ABdhPJyspg+OXqrZJvhrnmlzYfsKMcSZ2vr2Fj7VBhOZQkzD1bCiorQjfx8Li28V83Dzc01SH0o9rA==
X-Received: by 2002:a7b:c3d6:: with SMTP id t22mr20583968wmj.134.1609154953270;
        Mon, 28 Dec 2020 03:29:13 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 138sm20967284wma.41.2020.12.28.03.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 03:29:12 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Rationale for a commit
Message-ID: <fab82b1d-2e7b-a741-6d1f-df46c6edd64e@gmail.com>
Date:   Mon, 28 Dec 2020 12:29:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'd like to know if you remember the rationale behind this commit:

f90f031e0f1f4529fa7536aca61dfe54509745a5

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
