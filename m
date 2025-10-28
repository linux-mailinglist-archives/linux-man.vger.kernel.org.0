Return-Path: <linux-man+bounces-4204-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4FEC17548
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:20:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 956091AA020F
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 23:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D2C36C237;
	Tue, 28 Oct 2025 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3fSu16H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A487D36B995
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761693334; cv=none; b=egfW1pHFp8lsGKx6fDawz3TR9+Ln/A7ZpVfyaxDlmsfDtO2iWq9L8pwYVJAO8z3Xq/oAzWWSH1TksOoSWwf07LNSrPwNTNLiI+OkL7rn8xfFOKCtcnLXyZVQsgYDeByVapwFKklmTEuCrQfXhudT+loKg8CtjswopKA76A/jStM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761693334; c=relaxed/simple;
	bh=Q/5rMjO4hLAsjliBI+epYQnAKoS2XrmFf1dhmL0+U1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IR+gXSrsqVGMHTtS0bltlQ0zfOUElO5LOFD33npLiQ3nyxmV1etF0vrcxqZQwjrGkh2Tdxd/dVjo5aMLcm0ZfjxmFqVAxodhLiUlqkQWk9c6XeYrC7Pha9GQPDKioF+l6m4pkV8gdKIb/kCVvX1jiEGwPfaJ++q68aZfR27VxgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3fSu16H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ED14C4CEE7;
	Tue, 28 Oct 2025 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761693334;
	bh=Q/5rMjO4hLAsjliBI+epYQnAKoS2XrmFf1dhmL0+U1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S3fSu16HrAXh51Mm8MmsWlmN7ER1jB/uysZZSZZLlvY8T7bADZliHjryLH2dxnEI3
	 1k7R400Z9DA8zHWiwCvpHW20+4yxr+iMsnCrCyveprbhNcmeZ1LgqVJ23tGc0egXAR
	 ZdI/4PlZkB8wsHStuv0xdwR/WVQonGGIWMVQElYh4bY+wrubplNOxJXDFbU8ZHSKEg
	 GIEzWSCUVcXTMVRrkztHbM6gC9FdDltBhcdA2B0GdHJhieL/SlkUVBp7qZW+WG1JKd
	 3crsXuvrTUbx+XtYyrDY/RYTvPPlflmcuoH4e9L9WULrVqL4M12zlfNZfNP9/agI37
	 kEhcuGXQDM0Wg==
Date: Wed, 29 Oct 2025 00:15:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>, "G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>

Suggested-by: Pali Rohár <pali@kernel.org>
Co-authored-by: Pali Rohár <pali@kernel.org>
Cc: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Jan,

Would you mind reviewing this?  The thread started here:
<https://lore.kernel.org/linux-man/20250525103344.fe27ugiytfyoadz5@pali/T/#u>.

Hi Branden,

I wasn't able to do anything after your request from
<https://lore.kernel.org/linux-man/20250525103344.fe27ugiytfyoadz5@pali/T/#m1bd706844fd322b2b0f9090ceac68e7ba29200eb>.
Pali will probably be better placed to do that, since he authored that
text.

Hi Pali,

Sorry for being so slow with this!  I wasn't able to work on this until
now.


Have a lovely night!
Alex

 man/man3/readdir.3      | 22 +++++++++++++++++++++-
 man/man3type/stat.3type | 16 +++++++++++++++-
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
index e1c7d2a6a..368e98e6e 100644
--- a/man/man3/readdir.3
+++ b/man/man3/readdir.3
@@ -58,7 +58,27 @@ .SH DESCRIPTION
 structure are as follows:
 .TP
 .I .d_ino
-This is the inode number of the file.
+This is the inode number of the file,
+which belongs to the filesystem
+.I .st_dev
+(see
+.BR stat (3type))
+of the directory on which
+.BR readdir ()
+was called.
+If the directory entry is the mount point,
+then
+.I .d_ino
+differs from
+.IR .st_ino :
+.I .d_ino
+is the inode number of the underlying mount point,
+while
+.I .st_ino
+is the inode number of the mounted file system.
+According to POSIX,
+this Linux behavior is considered to be a bug,
+but is nevertheless conforming.
 .TP
 .I .d_off
 The value returned in
diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index f3c312bf0..b87195766 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -66,7 +66,21 @@ .SH DESCRIPTION
 macros may be useful to decompose the device ID in this field.)
 .TP
 .I .st_ino
-This field contains the file's inode number.
+This field contains the file's inode number,
+which belongs to the
+.IR .st_dev .
+If
+.BR stat (2)
+was called on the mount point,
+then
+.I .d_ino
+differs from
+.IR .st_ino :
+.I .d_ino
+is the inode number of the underlying mount point,
+while
+.I .st_ino
+is the inode number of the mounted file system.
 .TP
 .I .st_mode
 This field contains the file type and mode.

base-commit: abac986a3283e679b6b323f58ab6677bc49a05e0
-- 
2.51.0


