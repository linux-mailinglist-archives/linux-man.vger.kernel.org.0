Return-Path: <linux-man+bounces-4051-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EA454BBDB69
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 12:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B00074E5F6E
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 10:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D76423D7FD;
	Mon,  6 Oct 2025 10:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SW6hDbjw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8E8188000
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 10:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759747145; cv=none; b=ghxj/AlJ143I3fSSxypaALR1whCW1pdqS89BPhjh22Cm34QZgLx60kGpHsNg3Ae5fdNAlz+T14BJPT7DTGRyPUZXvh2rmlGEpItoPVQkNhsl7f8Fi7ZLg6G2RVNvpY+6Wke2ci4hFq97VPNA1hhh3vmHBoFQoYArgoA41/KbAxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759747145; c=relaxed/simple;
	bh=/fXQ5XInQW1njMKK6O/bP3kp1GO0POkzPukV2L7Qpzo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QNqhnHHvf+q+3+3K6VowmTT26IBakUmVLm557U1WDGCPM57Y3OzKcQyCPXQcD2robTQ0IDBs9rEGAokXD0Q/gpB/Wg3BRj4c4pBNam2Rlbv39OISyuSmsbfJKhRqPNKurTvFk6rOG6wODsHXLyoXY/OVLDnQVJLuv3QQ8cnlCNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SW6hDbjw; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso3012177f8f.1
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 03:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759747142; x=1760351942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ErX8TItfsgmG1vHuoN2fyENKCc1Za7ahSSoijSHXH64=;
        b=SW6hDbjwaousPtojpNemhaRTtiWhQbUjA/pp6Uzdbvv6SLPfcUQCwlHB0m4tNV5uj9
         5gUaU84Puu8zacbaasNf0z8XENyBGvbizBOYypyvzGTZrlQe0cjl3n4dQbm1qhsltzxx
         tUTmhJu3boro9B+Db5E/PfiEEEqHJEjuT+lB5aReRP5sqSDnNAvm1DL4u2XExqX91c09
         Viog275i5zGGksQL/pFoKE91BcbaNym1qb6ngNdEH/MYyR9zYReOzLShUyKi4nhQGdTU
         Fi6/vbHP8XbLq51U99zJQm6CfDlBSmWFkVp5aSZ4OvYlSscfuxZlhH246w2OLO1mG6so
         9H3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759747142; x=1760351942;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ErX8TItfsgmG1vHuoN2fyENKCc1Za7ahSSoijSHXH64=;
        b=NOO+H2CY4m6Wzu9BHiME/anwKuKipuiiiLGi+tK7xT16djQLZy54gnCq2E1o8k6VmR
         9EbIu2+q7fjddLnf2XCtUCabsMnPMLCdJhkyfhJpQbbe/k9RwagPeB28aQlO36kPKljw
         Im4MMid+eKeeHcGDmfjNzXdoLqLPJAdsfJn6Da2s7bSQCntU2wRxw1dlqnMCXGe44sCz
         4DcRtytiKVjX+knpbnCRXRUw15915frM6L6aF4e6gXno1HRlvXJy+i+PoUR9i4JZlSHR
         DX5ft4AgnXfuWNypmjp/DZPfw+xTQ9QRjXCiwf0sPDUSCCxPlmp1uvJN3hMQtrONBIrn
         xGGg==
X-Forwarded-Encrypted: i=1; AJvYcCUhd6FjoomJRtEzU7EbTzInI59R/cyebtpQz/7d3H8xYCMAnwG+rDoeDm/kp+2dV/kFVWgFT9F+JQY=@vger.kernel.org
X-Gm-Message-State: AOJu0YxWdJlm3nT5sUGooTz021KbQhHlX935IOAcHIwAaq0BUKvV/t1R
	3ZuUp9LIzKIyUVPt0GmB9PxX5OXwflAMOBAm8xO+7kb25gxMY9FWcBmP
X-Gm-Gg: ASbGncsJ55mbpgPpsTWjRQ6LL8CptlwT0DsYkV+nh/Spu1fE3L8jgWLwlxcGgJbxO/T
	5KIfDub9Ypb/4kThCRrw7BDqQ7YUqSPDjyd9c+1RVtYI6FTa0ZpKQZYgljxdc1QuKYx4tSwqXti
	7g9wi+mzSzS/4IYjZqXSOyIbggpqxi8bW7BlLPS639XnvXnlfzKawEQqeHJWN4l7PiYTBCBJgff
	Vp4EnEnXoL568DlXgwU0Tx2kBis7dodgsX2Wj8nbRagfWUQyunmiVpwQ1Ei10cEbIomTDX805rs
	+D1VnqHtrr9w2AjGmmlUpTXhC0xc8Ejw/CP06bSiy5BpP9NonjTLp5KOqLW2+3msAIR6iyNjR1N
	dEvECo5UtqAZ/hMG0jtpqxAUwrQUtyD0Gu9UJuhf4y7Y32IRJc5K0mrJ+18+p+qY=
X-Google-Smtp-Source: AGHT+IEHcS0JZ0Tf55gdJtoK8pzvvqtMYbyxpIhtRL0YgJz6vL0VIB3vTc3qXBxYrvLXICcVxN+1Bg==
X-Received: by 2002:a05:6000:2289:b0:3e9:b208:f2f1 with SMTP id ffacd0b85a97d-42566c556a9mr8095872f8f.29.1759747141407;
        Mon, 06 Oct 2025 03:39:01 -0700 (PDT)
Received: from localhost ([2a01:4b00:d036:ae00:7fdc:7a68:6e69:8671])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4255d8f01absm20128242f8f.44.2025.10.06.03.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:39:00 -0700 (PDT)
From: luca.boccassi@gmail.com
To: alx@kernel.org
Cc: cyphar@cyphar.com,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
Date: Mon,  6 Oct 2025 11:38:12 +0100
Message-ID: <20251006103852.506614-1-luca.boccassi@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Luca Boccassi <luca.boccassi@gmail.com>

open_tree() with OPEN_TREE_CLONE is needed to apply a mount multiple
times, otherwise EINVAL is returned by move_mount().

Signed-off-by: Luca Boccassi <luca.boccassi@gmail.com>
---
As requested by Aleksa on https://github.com/brauner/man-pages-md/pull/19
and based on the 'fs' branch where move_mount(2) was added

 man/man2/move_mount.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
index 13063ac1f..e3dfc1ea8 100644
--- a/man/man2/move_mount.2
+++ b/man/man2/move_mount.2
@@ -457,6 +457,13 @@ which would otherwise cause the unbindable mounts to be propagated
 was attempted,
 but one of the listed restrictions was violated.
 .TP
+.B EINVAL
+The source mount is already mounted somewhere else. Clone it via
+.BR open_tree (2)
+with
+.B \%OPEN_TREE_CLONE
+and use that as the source instead (since Linux 6.15).
+.TP
 .B ELOOP
 Too many symbolic links encountered
 when resolving one of
-- 
2.47.3


