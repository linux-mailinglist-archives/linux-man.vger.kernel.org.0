Return-Path: <linux-man+bounces-2692-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E2AA7612C
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 947A1167A85
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D502E1D63DD;
	Mon, 31 Mar 2025 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="By+2t5CW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB92E1D63F7
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409009; cv=none; b=LsAIV+VZcbW5otIU0vSh9kA3o7Mzta2c9OZpJ5zQKlcFguwp2O1PNF7NDF3QdPisxAojXUxHpCzrWB2OrkjWHIG3rQcnfe7hOiiTab5I2eLw+Dy/bmP7/FLsWzcDhs87DzrnqkNmz2zzyynjZW82M+LUcoZRx8s/cQOKuUQBYok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409009; c=relaxed/simple;
	bh=jmvIrSzrlLC9LnJF0JIcY8MEwebAz+ctgth4GG/l6aA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qpb2G+5mcaaC6XtM2IVAV8rbB7nbCunRZn8uU6M8Tzo32UMu2e6U8GNEZyfXcPgoZf3eDQazlNp36pHgbX1j24IgILgPYdFpbqb7mqJf3z9j1x5Hfzjl8qayszXVWjDw1fqgf4NIf1mfECGY28WfSOz2lJ4IrD1DRbtet5sXXvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=By+2t5CW; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5cd420781so8264701a12.2
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743409006; x=1744013806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUUlPAVZjdxyxF6v2tj2D+r9Rzu6dggJpnbaS470t6c=;
        b=By+2t5CWFQOFJvUUdRl1XFmaNK2HiAn1jcmQe3Z4BPM8yi2nfwNRwpC6lN2Km+hU5v
         xDwVH8nRBpY/kinGk9CChCpB65VlA02ThMEa+yebtRPnmftXlzeX+yWR3zWtVr0wY+SA
         ajnSm9l/tyENoA9SSukndSib/SsMX2lRQrKrbQrde+ajfgvAtsOZ21HCvkTeL9l+QhCh
         Pg/gAg5XZS0YrqXMT9f4hUmhgkueVmMmAR27QYpet3ZqK0knd5uEOmDEWO9+uAgd9oVs
         FIrBlZjvlAW7FOt87lTo0dkwP+EoMxrQ//119djeNVLBt40yC5qka12bJoBSmlrTx9bn
         epiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409006; x=1744013806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUUlPAVZjdxyxF6v2tj2D+r9Rzu6dggJpnbaS470t6c=;
        b=HAsMs01al2ly1oS/v6LjD+lNYU/hcx0/VahRjxdx0hUl4M/34ZOr9a2pDohrWY2Y5H
         yNcFE1F8wfYUSnBniF5W5YPtzWn4J4BgBWqmQ1XJ2cYgnr0fKRsrMHRjz4M45x97dGB0
         7wnryl/ktgOvTl2dO4OTmCcTHc9D02ErFF4fmuS0ci/99hyu37E54v5OA2hXUvCnK5E5
         U8sRLt1v2rVgf6pEtMXS+Kl8KDMPS2h9CT9jNaqb5K405B+ML2V7sKUYGCuH/zA6DLm9
         3NGj1XqN6xIdsvF+OvivR3gJZPzwUy9Ukc89BW6p8PqBS0+sjW5XdE3oJyK/8kF1wLvb
         iCBQ==
X-Gm-Message-State: AOJu0YztvZ97ePm0IELB9GNJ4gaVXGAzxa/gg8bYoDpY2jI1gO3Icxwm
	377gVuAlvQ16QnFE96uGelF7Z8VCq6ApMACUDF6xBflPSgLSyL/e
X-Gm-Gg: ASbGncspSVUoUkwFN3lTKbSihjuozuWRYlsABfjGeNEcTp48xK5Lzw6q4CbIoEpPfHS
	AKEtU7+GQPRaQICcR6bzQlBRZZqLuDgQs81rFSGeohVOhfpi4ZKIugjdJu48PPXPkiErQJ3J9aG
	Y44nE5hMQPkHCng9RQlsrFSLXEgOyzt6QoDtuH5qEpsqHxudaKynaOzNFIhAs/FSyiWiByvE0xa
	QGVix71jedLwx5VD1UKJWtqUsVag54uvaklp3/nepPznEyl5sfUltCZ6tC3sv/iJ4uGtzQhcXW/
	WAESJoxHxl1Y3u9JwcHtUYLi7Dm9gLVZEC6srzlG9sd0TlCIGW8ApVCMv6UjnRQIzkTpW9KE5W9
	/01NYr2n+Q3kHrT28lNbu7g3t4tkLTk7FHsZzRE6a3w==
X-Google-Smtp-Source: AGHT+IF5E73QiFWd46IEQyS4tMIMXymHzpKHLpp4/FGMdVsgQ0hrZ6jI3hZ6FoK5eLLX+XPJE/2ByQ==
X-Received: by 2002:a05:6402:2b97:b0:5ed:76b0:a688 with SMTP id 4fb4d7f45d1cf-5edfd70362amr6413186a12.21.1743409006101;
        Mon, 31 Mar 2025 01:16:46 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16f1b73sm5466528a12.46.2025.03.31.01.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:16:45 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3 2/2] name_to_handle_at.2: Document the AT_HANDLE_CONNECTABLE flag
Date: Mon, 31 Mar 2025 10:16:42 +0200
Message-Id: <20250331081642.1423812-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250331081642.1423812-1-amir73il@gmail.com>
References: <20250331081642.1423812-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A flag since v6.13 to indicate that the requested file_handle is
intended to be used for open_by_handle_at(2) to obtain an open file
with a known path.

Cc: Chuck Lever <chuck.lever@oracle.com>
Cc: Jeff Layton <jlayton@poochiereds.net>
Cc: Christian Brauner <brauner@kernel.org>
Cc: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man2/open_by_handle_at.2 | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
index e3ec70dd5..f808ea933 100644
--- a/man/man2/open_by_handle_at.2
+++ b/man/man2/open_by_handle_at.2
@@ -128,6 +128,7 @@ The
 argument is a bit mask constructed by ORing together zero or more of
 .BR AT_HANDLE_FID ,
 .BR AT_HANDLE_MNT_ID_UNIQUE,
+.BR AT_HANDLE_CONNECTABLE,
 .BR AT_EMPTY_PATH ,
 and
 .BR AT_SYMLINK_FOLLOW ,
@@ -163,6 +164,29 @@ with the
 .BR STATX_MNT_ID_UNIQUE
 flag.
 .P
+When
+.I flags
+contain the
+.BR AT_HANDLE_CONNECTABLE " (since Linux 6.13)"
+.\" commit a20853ab8296d4a8754482cb5e9adde8ab426a25
+flag, the caller indicates that the returned
+.I file_handle
+is needed to open a file with known path later,
+so it should be expected that a subsequent call to
+.BR open_by_handle_at ()
+with the returned
+.I file_handle
+may fail if the file was moved,
+but otherwise,
+the path of the opened file is expected to be visible
+from the
+.IR /proc/ pid /fd/ *
+magic link.
+This flag can not be used in combination with the flags
+.B AT_HANDLE_FID
+and/or
+.BR AT_EMPTY_PATH .
+.P
 Together, the
 .I pathname
 and
@@ -327,7 +351,7 @@ points outside your accessible address space.
 .TP
 .B EINVAL
 .I flags
-includes an invalid bit value.
+includes an invalid bit value or an invalid bit combination.
 .TP
 .B EINVAL
 .I handle\->handle_bytes
@@ -414,6 +438,11 @@ was acquired using the
 .B AT_HANDLE_FID
 flag and the filesystem does not support
 .BR open_by_handle_at ().
+This error can also occur if the
+.I handle
+was acquired using the
+.B AT_HANDLE_CONNECTABLE
+flag and the file was moved to a different parent.
 .SH VERSIONS
 FreeBSD has a broadly similar pair of system calls in the form of
 .BR getfh ()
-- 
2.34.1


