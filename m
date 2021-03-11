Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 213DA33804C
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbhCKWeF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbhCKWdp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:45 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D8BC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l19so2661761wmh.1
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jdRQlz8+r30MTEGQfc5lYycYeDSOcfabeFJAMaZKm9w=;
        b=e5f++Cx9fIkv1xPPmsjTFd7XZ0milC106gLlM8IIxC3hA2wZQf0Is7UuVzSAhjekLN
         ZVusV0MtE4pIIhQ/RFB0txtkSx7xZEJu3gv4mVCSmGLC39f6mXaDicfU/Glcy+qKTpC3
         nhqyX/lYmZKQT3C0tvTwgjL7QYRZqmoMGMK62HiBr9HncRJD1WBIO0mOsHPt84NUuBGc
         rIQ+MOJlCr3nuvHiFvo3xLg5lPJsTm4Y36ib2tOSl3WmweI57vUqCOb2kZqvCTXB8u4x
         cVb4V5GOC0zh/u6IfOU/4lVFxMQ4/EJeWrLMckRxBVAd+qcYDT7JUdm+yEIiZ07+zid0
         DmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jdRQlz8+r30MTEGQfc5lYycYeDSOcfabeFJAMaZKm9w=;
        b=g5o5NtjUZpkUlcXMe4V4HjKw8YrQDys4f4Uz3QvVcCTlAht72s/3op8y/g1zSgppop
         1Z7wRukHT1NswunvEG41IAMI/0IPvQLblZ6m7s5Kl+mD28IKaLHE/+x1vzF+P3XG5kjd
         atH1GP17znunyzAEEuhz66TWNIZVddTsu06rBgllmKvfoPTxYz64ZZq4iSWStu0t+ERL
         sjl1eeVw+3tApaLyvX35HTSWh1tftGIdpPMDe24GMndB8ZDJF9GfoFNWHYj5rtlIkwdu
         j3uDwh/y0ySZwZvqpSFGQHb5MIOJ4XyqrByzmBHzd7JEsm1ng+kS0fOnpcTdLq1ulOih
         1QtA==
X-Gm-Message-State: AOAM53157dUx71k8K843mp/HAGyLG5MNLToyf05Sp3cRP3vzBiJyzNeP
        +5NutLCjCAf4XEtTMipb/V4=
X-Google-Smtp-Source: ABdhPJyHky8LAHU7G1KqgAyn7vVB6R4WVuGcimDUltj325bCWQ2oifx9mUJyZ5kdkiqNkJzQ/RyZWg==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr10386220wml.4.1615502023757;
        Thu, 11 Mar 2021 14:33:43 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:43 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/17] tsearch.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:15 +0100
Message-Id: <20210311223330.722437-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in tdelete().
Let's use it here too.

.../glibc$ grep_glibc_prototype tdelete
misc/search.h:138:
extern void *tdelete (const void *__restrict __key,
		      void **__restrict __rootp,
		      __compar_fn_t __compar);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/tsearch.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 1c771ef4a..ab4a2b767 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -35,11 +35,11 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
 .BI "                int (*" compar ")(const void *, const void *));"
 .BI "void *tfind(const void *" key ", void *const *" rootp ,
 .BI "                int (*" compar ")(const void *, const void *));"
-.BI "void *tdelete(const void *" key ", void **" rootp ,
+.BI "void *tdelete(const void *restrict " key ", void **restrict " rootp ,
 .BI "                int (*" compar ")(const void *, const void *));"
 .BI "void twalk(const void *" root ,
 .BI "                void (*" action ")(const void *" nodep ", VISIT " which ,
-.BI "                               int " depth "));"
+.BI "                               int " depth ));
 .PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <search.h>
-- 
2.30.1

