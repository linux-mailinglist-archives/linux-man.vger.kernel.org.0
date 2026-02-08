Return-Path: <linux-man+bounces-5055-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNCbFZyhiGnSsgQAu9opvQ
	(envelope-from <linux-man+bounces-5055-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 15:45:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A82108F81
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 15:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46593300EAAD
	for <lists+linux-man@lfdr.de>; Sun,  8 Feb 2026 14:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0A31E3DDE;
	Sun,  8 Feb 2026 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxkEgnvM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814B93EBF0E
	for <linux-man@vger.kernel.org>; Sun,  8 Feb 2026 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770561945; cv=none; b=ecCreMxsGn5BU/pS/nzPAEsi+vJVSznnFv94nPo/B0QSHeabaPapLqA0p1+lNZ5kX4+0r0nP8WUC1ALOYXOwZAWApf/+AVzoCUnW4a0sHiXRM/+dmu5pO23j1Bsc8U1hKG3pQGToJpPKT6uGlIyafvtPEPwW5YcSPHqxe8HVMkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770561945; c=relaxed/simple;
	bh=n7sj0RUqpo624qsxpO01CBnu2t9D1+W06Mrges9R0Ss=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=TI7h56OIciSKJq9jaKNbIxL4JYAbB3kwy/XVcZfeFqswGPTwmG4984JQphQJfCVH1Dh9B/PbCxLPX9DluoJNXvjcEPX71dNMDcoQ8yTwheVWw+d1F9bboh6ZzE3aliD5HYGbK+8FYV7tT4ufTHeQDnm9L5R+2IUNZTHgXoncLGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxkEgnvM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C97EC4CEF7;
	Sun,  8 Feb 2026 14:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770561945;
	bh=n7sj0RUqpo624qsxpO01CBnu2t9D1+W06Mrges9R0Ss=;
	h=Date:From:To:Cc:Subject:From;
	b=VxkEgnvMdPArLkVzbpfhFsu6rPU9X/7BrKmCyIAykYslHlkDCi5qh7ZYPyhp12WZN
	 pOP2/W2Qnr1W0pTth0na7gpc0giLS42oB3g5LO28IRQywm2Ee3DUhzbE2PIxANJZ+8
	 3GR0RmUq6XQ6VIxNusr5v9X6Ew3In9JkdtBYqffrYiuAzA7+A7jLAEOYv7VKl5gylo
	 68qfKwmiL2oJyqizPvC2BP4hAVxXMR/3IB2QJ0w/eHcpcX6X+Y10xSNmiQYeexrv7V
	 p7UGCqdWH/YsuLoFWfLhYw4yFliRiL0PVwPUJD27PgMqsOsBMHrhv6W/YUX1I5ICzh
	 58GVzd8wJbezQ==
Date: Sun, 8 Feb 2026 15:45:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1] README.d/deps: Document dependencies of the project
Message-ID: <da222aa01dcd81cbfbb53890a4e41f2b3c028687.1770561917.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5055-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A5A82108F81
X-Rspamd-Action: no action

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 README.d/deps | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 README.d/deps

diff --git a/README.d/deps b/README.d/deps
new file mode 100644
index 000000000..1b0314985
--- /dev/null
+++ b/README.d/deps
@@ -0,0 +1,60 @@
+Name
+	deps - software dependencies of this project
+
+Description
+	There are different kinds of software dependencies on which this
+	project depends.  For maintaining the health of this project,
+	the health of those dependencies is also essential.  The
+	following lists name dependencies are <debian-package>/<binary>.
+
+	Maintenance
+		Maintainers need some tools to read/write email, manage
+		the git repository, etc.  The essential ones we use are:
+
+		-  bash/bash
+		-  git/git
+		-  git-email/git-send-email
+		-  isync/mbsync
+		-  less/less
+		-  make/make
+		-  mutt/mutt
+		-  neomutt/neomutt
+		-  openssh-client/ssh
+		-  openssh-server/sshd
+		-  pass/pass
+		-  pass-otp/otp.bash
+		-  vim/vim
+		-  xfce4-terminal/xfce4-terminal
+
+		Of course, the OS is also a dependency.
+		Devuan GNU+Linux is the OS of choice of the current
+		maintainer.
+
+	Build
+		To build the project, there are many dependencies, some
+		of which are strictly necessary, and others improve the
+		quality (such as linters).
+
+		This list can be generated by the build system itself.
+		Run the following command to print this list:
+
+			$ make -R help-list-build-depends
+
+	Run-time
+		To read the manual pages, one needs two things:
+
+		Formatter
+			Several formatters exist.  Any of them should
+			work, more or less.  However, only two of them
+			are officially supported; and of these two,
+			groff typically has better support.
+
+			-  groff/groff
+			-  mandoc/mandoc
+
+		Librarian
+			Also several librarians exist.  Any of them
+			should work.  man-db has better support.
+
+			-  man-db/man
+			-  mandoc/mman

base-commit: be29e611a386b754fd5ce9f9d1ef421d15319ec1
prerequisite-patch-id: 38fbeafc19dc8addbe6f759046983fb96661d87f
-- 
2.51.0


