Return-Path: <linux-man+bounces-315-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D3981FCB9
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 04:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 800911C21252
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 03:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662C317D1;
	Fri, 29 Dec 2023 03:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fqhLnW5o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DC31FAF
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 03:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6dbcc5d78eeso3485952a34.3
        for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 19:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703819976; x=1704424776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tp4Dm0KpFktwY2oc7IuxYfK9q1e6yt07HeILo2dyOEs=;
        b=fqhLnW5oiS7MUFTQI7QJVedmQJ233tvOFj1qj3759IkWDLjivgLZ0hwSlRpXMZV4cp
         CibRo6iomFVemUXrBvt9JvjqKb4wiVtqnCi8+tZxFmpdHJWLCyS+JugKW+aEyForieKK
         1BGZvfZpGrUz2I1ZPP0OQju3KuDerQABqVjPM03a2/Lm88SdGdkjN2Qlxfiw5bqCURx8
         HHuXyik2PCGSSpixRCU8HJNiNts9rD+4x3UxCmauuDJ2wNto9mbw2XeK7XqYdcLUlEw1
         dpE1cw12GIZN4VBhG76rid4BMQsDlDx86hvA3zj8oYWyml6x39T1yEvWnnzt6MouJf8n
         EnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703819976; x=1704424776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tp4Dm0KpFktwY2oc7IuxYfK9q1e6yt07HeILo2dyOEs=;
        b=oyu/iVj8G9kxbI6Nt6e1kP30YlumVDQn6WLCVmt5dMSTbHJIGTODMRsuaQpEzT2ipr
         ZU81fAI79J4SAnP3pRuJMfVvuNqVSddYFg2ZT2rlwrF3+XhJGB4O907G6eXuAQ+wxU63
         FnbTebppvUCZKx/HnfWghoqRjHKPwT56ceGOdbqyuR18lCwIfP7w7iAaMl9UxejII2GZ
         FWijRBepFPg61vs18dySzZLhcfUM/s6z+DQStHHdBvJcDLQ1oBglJWOH0XrN3WEIfro3
         lwKt2MPKGCxog2stF+TuHcqbELDv54iivdq4JetqOFhpU0shWlqyD/ToaeLM1uULdjID
         82zQ==
X-Gm-Message-State: AOJu0Yx7/YSXA0TIXsXfSh4Dwyv/w075X4rsT1uMEE5YF3Pg7wgCPBZu
	zl1rvODaa/Xwx4W61OTpXA==
X-Google-Smtp-Source: AGHT+IFDcVB/53olgFv4Wwcj0HeZ0Gc8wf/6OX/mVCVxJ4BVgRxn9TU7toQmsV9Mkx6CSfLeTzFDzw==
X-Received: by 2002:a05:6808:3c4f:b0:3bb:bdf0:a73c with SMTP id gl15-20020a0568083c4f00b003bbbdf0a73cmr7172228oib.114.1703819975952;
        Thu, 28 Dec 2023 19:19:35 -0800 (PST)
Received: from localhost.localdomain ([122.174.192.11])
        by smtp.gmail.com with ESMTPSA id c3-20020aa78803000000b006d9bd15fd5csm7793159pfo.17.2023.12.28.19.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 19:19:35 -0800 (PST)
From: Rajesh Pandian <r.pandian@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	schwindl@posteo.de,
	Rajesh Pandian <r.pandian@gmail.com>
Subject: [PATCH] bugzilla_218018_v1
Date: Fri, 29 Dec 2023 08:48:16 +0530
Message-Id: <20231229031816.3345-1-r.pandian@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man3/dl_iterate_phdr.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 0a8beb3ae..1355c5bcc 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -129,7 +129,9 @@ The
 .I dlpi_phnum
 field indicates the size of this array.
 .P
-These program headers are structures of the following form:
+The ELF program header is described by the type Elf32_Phdr 
+or Elf64_Phdr depending on the architecture.
+The following is an example of the 32-bit architecture:
 .P
 .in +4n
 .EX
-- 
2.39.2


