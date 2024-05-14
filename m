Return-Path: <linux-man+bounces-909-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B15398C5AAE
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:55:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2E141C21C6E
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 17:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007A31802B6;
	Tue, 14 May 2024 17:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bu6ayEwz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E09F1802AE
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 17:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715709317; cv=none; b=nM5dTSRl4M8u4ostx0HuIVU9PALyQGqy4AeQ+PvDIj+JnHPIAKN9VBDt/daSOE5RLfyw57e9C5Z6rzV7NZi37bzeX7tvrmweNKao/otlEdrO6o9ad6KRBognKZ57lN9tHpkkfvC/nf2NllCI+BFvgCjGrn+WJeCbuplmQlXisws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715709317; c=relaxed/simple;
	bh=WTfUibzk8RVthJrgXM7CHJnBlKxPvuSitFZaKfCRdBk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bk6T24o9lNu0YNTeqklZ9j37A2iPkX9pbRVIS9JEEtHt/5swa6GzvWqzg6Xfc+TdAwS5buJQMck3nHyxZjgzCuHYmQIojYxa/0VM0hu2/we9Kh2zgc+hPbouLbS7/si591dXOGptxhDO2qBu0KrTiScDqln+Fjn80qqaqM5+J9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bu6ayEwz; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-34db6a29998so4612355f8f.0
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 10:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715709314; x=1716314114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oPmyZZTVATSRLV2XbYNRIkzxOT6LJMM7m4vPtluuUcY=;
        b=Bu6ayEwznGBac3jAL0UluIi+pwSheyQbfffeMSGApqPbnnFCCnvVfw54xuzzEoU/q+
         3uHh5pOZXqbX5yHs2aAj0qcVPVtGKylsoqe1FLldP/vihQ4CFfX+zDj8FBgsGs1ucVx7
         TxZTaHTQQ4s3VIml7tSO1irjW+kyT2mMwxeL5Z3XiyIur0fLi0E1mG2DeXXqRkwAXPfH
         q+ZI7xQNALDgqQB/RqlWh7xYh3LVe4VxDoD7lcNGvghfmTivH3N/gA9+GUIaPdhmGCmd
         2bAXc0Gx7WmL9A6uuEu8Kx6ap9TKVI3Om1Fy3/J7O5OlnM7TcYbLbBJgYI1wzCH6avwq
         BqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715709314; x=1716314114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oPmyZZTVATSRLV2XbYNRIkzxOT6LJMM7m4vPtluuUcY=;
        b=ZdRKOLRO+1kVuu4lazzEPPC5WqIdDRx/G6SNPVF8dgDMN68m52qgwRTk/9r9OqM9ZI
         aE+o/4olC11ibdoGPECSDdDjdePKoS8POXKJ+SGJgaNvvt3L8TGYXEpkrGnPhLz+49Kj
         PEYwPaLrIrKvME6Co13b8SB+/jWK+ZTU0OEl0WfYN5/biGIUbR9soWX6SVVtCvI/8Cq/
         JRwp+6AVXvJ/Zw4lo3cVdbRvxf84dDGvXCK70I1raqyhxqTItNsNb+2jVrymu6xWUWrS
         K0VZk/IVquuGNknaqV0MgYFrpQtuRNhB7RvCmmSGjMnN8R5HqmzQ/EiDC/twBzISzTQY
         y2Ow==
X-Gm-Message-State: AOJu0YxGuq51yObQQaiaYkPsEAGC6GFgUemlSPfM1hibBcEWLzU7i84G
	hSWztpc7o/m0LMkm572li+dSoHsJSOSnWpxDM3aszWxZyth5mHmK
X-Google-Smtp-Source: AGHT+IH+Y6PolsE3jYCr7Z22az+ff11MlI7gx6G+LPkft/OOg6L9GTw3r3cxldCCE9Gblk7jjCStWg==
X-Received: by 2002:adf:f250:0:b0:34d:414:5f99 with SMTP id ffacd0b85a97d-3504a735149mr8536812f8f.25.1715709314381;
        Tue, 14 May 2024 10:55:14 -0700 (PDT)
Received: from teknoraver-mbp.teknoraver.net (net-5-94-218-116.cust.vodafonedsl.it. [5.94.218.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502bbbbfecsm14189239f8f.105.2024.05.14.10.55.13
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 14 May 2024 10:55:13 -0700 (PDT)
From: technoboy85@gmail.com
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH] proc.5: document 'subset' mount option.
Date: Tue, 14 May 2024 19:54:49 +0200
Message-ID: <20240514175449.68721-1-technoboy85@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Matteo Croce <teknoraver@meta.com>

The 'subset=pid' option was added in commit 6814ef2d, document it.

Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 man/man5/proc.5 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man/man5/proc.5 b/man/man5/proc.5
index 8022ca49e..b1e358cb4 100644
--- a/man/man5/proc.5
+++ b/man/man5/proc.5
@@ -105,7 +105,12 @@ This group should be used instead of approaches such as putting
 nonroot users into the
 .BR sudoers (5)
 file.
-.\"
+.RE
+.TP
+.BR subset "=\fIpid\fP (since Linux 5.8)"
+.\" commit 6814ef2d992af09451bbeda4770daa204461329e
+Show only the specified subset of procfs hiding all top level files
+and directories in the procfs that are not related to tasks.
 .SS Overview
 Underneath
 .IR /proc ,
-- 
2.43.0


