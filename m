Return-Path: <linux-man+bounces-1461-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8E49306EB
	for <lists+linux-man@lfdr.de>; Sat, 13 Jul 2024 20:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08A391C21EBD
	for <lists+linux-man@lfdr.de>; Sat, 13 Jul 2024 18:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC2113C3DD;
	Sat, 13 Jul 2024 18:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kI3F/I1I"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1947838DE9;
	Sat, 13 Jul 2024 18:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720894568; cv=none; b=t1IpHezFQsSAbcgPk7R2P6mYNGU0TtFSXvmUqhGrV7bXrpE/VscZw52ODz2nLyRkfWt+Bgs9igB2avOKSvbY0Cl/nJZ21k6T7SlEKatx/6Joc6ZraKz9Mv8bqRUW6Ew1jHFTi2DUiL8wzxiXwAkp94y3tDFhPgol6udMim4X648=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720894568; c=relaxed/simple;
	bh=bB0TA5dG6tc/W3ylFVE6nqtio2DT5XLtrjbsTls3Uc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lz7fDuW7WUWDQFdWcurVncjwQVCvkzEhMZi2rEGIusskmIkqk1oVWSNQsbS2JQ7NvlxAlAmyveMEGfO01cDLI3WQgCkUh3fzJZaxg4IuQkKjQGku+qn5i9O1YIpdloFz2SzQthexPq7JxqUKEvNMKPdL87xLwtoccUmPCSKrjvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kI3F/I1I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129AAC32781;
	Sat, 13 Jul 2024 18:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720894567;
	bh=bB0TA5dG6tc/W3ylFVE6nqtio2DT5XLtrjbsTls3Uc4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kI3F/I1IvXsQY7ItWWxWvCS3yz+kPFWxuW39O1OLmYgsuaxCIYXJ0bCm+Ge9Pk3en
	 zy00UqUm17ecGjM8lxGwxaSqajPXG5lw3MKAdmPcjwRj0D63k9oD6dZTmKXT/z3Unk
	 gx+7r2FRXUGmCF3hCkhnwSm/5CGZ6fP4XLm2/NUwRt7tM52DDJ6RS3ad8XP8BXVcQk
	 Taelg5uqAlDTBwJkA0xBxfEqGdN+p6bZZmSrU2zMBll4XKAzQx1ZBpe9khVe9CyHE9
	 QQuuqSejgVaNPzGO9huzan+tvaEzU8tOvslv5td+oPRFa43K3b504gFcORNpN2/o4X
	 cC1d3vIVrrZyw==
From: cel@kernel.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	amir73il@gmail.com,
	Chuck Lever <chuck.lever@oracle.com>
Subject: [PATCH v2 3/3] fanotify(7): Document changes backported to LTS kernels
Date: Sat, 13 Jul 2024 14:15:48 -0400
Message-ID: <20240713181548.38002-4-cel@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240713181548.38002-1-cel@kernel.org>
References: <20240713181548.38002-1-cel@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chuck Lever <chuck.lever@oracle.com>

Signed-off-by: Chuck Lever <chuck.lever@oracle.com>
---
 man/man7/fanotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index 3733543013d5..449af949c0a8 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -825,7 +825,7 @@ See
 .BR proc (5)
 for details.
 .P
-Since Linux 5.13,
+Since Linux 5.13 (and 5.10.220),
 .\" commit 5b8fea65d197f408bb00b251c70d842826d6b70b
 the following interfaces can be used to control the amount of
 kernel resources consumed by fanotify:
-- 
2.45.1


