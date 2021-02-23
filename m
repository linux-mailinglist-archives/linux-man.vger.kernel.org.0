Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17F9C3234A6
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 01:47:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232898AbhBXAcF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Feb 2021 19:32:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234546AbhBWXzn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Feb 2021 18:55:43 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CB7C061574
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 15:55:00 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id v15so145428wrx.4
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 15:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZuICumX2JMmuaQbI5szG/5Z/g6gMj5rI5n3IQoi+FZ8=;
        b=qRDAqsCn8K4RaivKinKdQnNn5lgEPXod5kOCO9e2ktnVfxwDLVe/sHSzZ6O69c0vvM
         3DQ+zb9gzkd0RFycj4MZUedcwDl0o+xg+FcpeMSC57qn1p3y3NFJIs8Av3OKUmRu+l6X
         t8XiwJUsen63g6uyHfcqovG8lut2YDRwZaI3LNCl7CV/f5h8JG3+pncBnMk8SC34jJ8p
         rdScSvvAoyyO6NXc3HrvA9/xPYN792j6Xr3jxtlOZa3Qaz4rKM/qGE59R32k8WUhCAIw
         mQcEy7smHSyg9N2RD29NHHebMomPxAjVWichgcA8bVWFRLmwsk4QoeOBm7GXXlqPRZm2
         CXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZuICumX2JMmuaQbI5szG/5Z/g6gMj5rI5n3IQoi+FZ8=;
        b=lHINz3knwsxrZmNYUI9Fdbe7TLJwuAkywpfZckAIBhOV9wRw5jYfyFkzcOSP2fFZaP
         qzRPxZpTT5+pp3slRmhBw7e0BecliI9XR0NtAUWpL/jRSSZ6fHH6oWWUQ8Uzojzb0y5o
         8m3m5vCJOsZtaIIlRXFlPjk1LbPBb9ITXdaZG5n8LsXC9rgYlwQqpgvNV42we5y2Cshl
         p/uR5ZUrG3NNFtj9Jl93nXlmkCAAgX5amN8bCHfoLGV1Jdfv24IEb8wb2oQTkQlNcV22
         qaYtj0H8k7CfQXrUvYG75Y5akfGXtV8NbGaSvpiOiRFpBfx98mvZmIBD3LlRk8HvouOp
         dyVw==
X-Gm-Message-State: AOAM532qcZZ9oujzhhmUXeNjUaQEMUbTOmC6jOczjKvvWxft+U86EbmO
        /xOQ3akmZBuvjtdBHb4Z1WKCekKXkpxN/g==
X-Google-Smtp-Source: ABdhPJzuSvgrF64FDI48BYmYrvSEnKIHbmGHREhms8m01Mx8pjMovVdTpwCieS4XNFAET6ACGjTpXA==
X-Received: by 2002:a5d:5750:: with SMTP id q16mr14534465wrw.315.1614124498852;
        Tue, 23 Feb 2021 15:54:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id x13sm4979743wmj.2.2021.02.23.15.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 15:54:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] ftw.3: SYNOPSIS: Remove duplicate header
Date:   Wed, 24 Feb 2021 00:54:40 +0100
Message-Id: <20210223235439.135579-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both functions have the same header.
There's no reason to separate the prototypes repeating the header.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ftw.3 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man3/ftw.3 b/man3/ftw.3
index 027750fd7..fa7678fa8 100644
--- a/man3/ftw.3
+++ b/man3/ftw.3
@@ -45,8 +45,6 @@ ftw, nftw \- file tree walk
 .BI "                  int " typeflag ", struct FTW *" ftwbuf ),
 .BI "        int " nopenfd ", int " flags );
 .PP
-.B #include <ftw.h>
-.PP
 .BI "int ftw(const char *" dirpath ,
 .BI "        int (*" fn ")(const char *" fpath ", const struct stat *" sb ,
 .BI "                  int " typeflag ),
-- 
2.30.1.721.g45526154a5

