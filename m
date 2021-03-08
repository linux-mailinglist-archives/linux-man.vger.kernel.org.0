Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1CEB3316BF
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231426AbhCHSyq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbhCHSyX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:23 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0D36C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:22 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id u14so12610638wri.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bYOrpxfs6Ak4395zGnKfDc3HmQh5HUAls5Zb8ZD/JaE=;
        b=jzR81dVb213io9iLq8/PH0UXTibbN4pEm6yner9tOlxyCkgeSPuwQZgJcCTYGx4j2T
         aVMxlAeoT7vohth1O1plb/Z7Hv83VLyelkoOBIFuEnUaVzrIzhXKKVc6EbpKY9V6y02Q
         Nf7lSPZSf+bBYPEXmI4x5RlXQjLlRYkW+994U+UIAD9yeACS3jZxIZyBDK8ySpTccDDh
         sDdskc++hu/93ShCELxWmo9oHBhrWZGuBxYw7OrZf29uBKAb4Nk+/1n8zP+mXfYmcXss
         KYscfZghlMCLtDt/NhSWFP/S0PEMs8SYSiOEZpwgfcs14eI8UUIiW2/85EVP6qknYDAg
         YK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bYOrpxfs6Ak4395zGnKfDc3HmQh5HUAls5Zb8ZD/JaE=;
        b=kxrZQ2MiTGo0Q9jFFtsg01z/eIcQTQeCboIIjE8ecK9kvmEud5tc+39V0bIHQFaUT3
         v+GTSIiksPtg5VHf5WHfk+hRj85PY9ECNqQ/DR/mvinE7DKjEQMzfhyALcTJAOlAE6KV
         Z4eYG3teRueZWfhQqMOJxT8idApFBFhd5xR8Mpd7THv0XvQdl5j/NOc0EE3iudLMBkxx
         estqiZYkdcBkrJ99VrODaWDi5PlR45nLLOKdt0Zen9HXpeB5ycAgIHUmNGMzuWmQi2hf
         G5BacVaCOCj0SosEkOcObemzU2mw0NgbDda362cD6PRM0XQtWJZ06gYnKy3bL7pvnULa
         hwkA==
X-Gm-Message-State: AOAM532pYOVatLwnBbyu6ydoX+BHEWGaaIu5wFO5Qc+bJfAyMe9EVSDJ
        jZu4vEFIEIsfjpP0nf0xloVCZtGNVRA=
X-Google-Smtp-Source: ABdhPJzaRFy9nx/Pbpi1THaCmoOu0VABXX0/RKrlX9+RaQ6+ZkIMSWFoWcmhIIvJAQsbUNyz/jopUg==
X-Received: by 2002:a05:6000:1a8c:: with SMTP id f12mr24298650wry.173.1615229661692;
        Mon, 08 Mar 2021 10:54:21 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/23] puts.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:23 +0100
Message-Id: <20210308185331.242176-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in fputs().
Let's use it here too.

.../glibc$ grep_glibc_prototype fputs
libio/stdio.h:631:
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/puts.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/puts.3 b/man3/puts.3
index 3b0fb9d2a..e9b0b0c8a 100644
--- a/man3/puts.3
+++ b/man3/puts.3
@@ -34,8 +34,8 @@ fputc, fputs, putc, putchar, puts \- output of characters and strings
 .BI "int putc(int " c ", FILE *" stream );
 .BI "int putchar(int " c );
 .PP
-.BI "int fputs(const char *" "s" ", FILE *" "stream" );
-.BI "int puts(const char *" "s" );
+.BI "int fputs(const char *restrict " s ", FILE *restrict " stream );
+.BI "int puts(const char *" s );
 .fi
 .SH DESCRIPTION
 .BR fputc ()
-- 
2.30.1

