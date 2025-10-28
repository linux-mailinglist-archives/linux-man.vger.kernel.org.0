Return-Path: <linux-man+bounces-4203-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F24AC14CD3
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 14:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5AB51A2842D
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 13:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1912DA746;
	Tue, 28 Oct 2025 13:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToZKXy+S"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C14C264634
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 13:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761657668; cv=none; b=N5gBDYZPMaxPgvqrMj7MLOU3IW5jD/C8286WkIur3sYytMa3bHBBA5hxtei+RVuz7hdGz/Bln1rHDUZdossQSO3bCquMlqAVxVRoDtgrrawzN21Qz3hqQm8HjCJzCG83pDP6JWTMkfspAGkcqp02xk+6ap5B4ulkW1z/RvxCxx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761657668; c=relaxed/simple;
	bh=B35qN5qIWoh52tU90Dz4GdXOS7QhoOAnw2iGZG9ATLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CMyluwkq2mNOVQ93xMU/QrAwS0z78P1H/6ZM4DFNLmjJ4UPUsRSD2dxfXUlXgztMdSMO22l0wO53jHwOKBNRmpZOkTBU6pbUdBhquJ7JodJt4xV1W8/EGQzQW1wEEDv8D5JU/bUFaDSM4br7x3Qj5bbHkxyVMcbWpFr0lRAhGDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToZKXy+S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BEA9C4CEF7;
	Tue, 28 Oct 2025 13:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761657668;
	bh=B35qN5qIWoh52tU90Dz4GdXOS7QhoOAnw2iGZG9ATLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ToZKXy+S+xKjbPyNPNxcm9b+fTj5D361HohOqN6CG2obS+AP0qajc5gmT+uJMIF81
	 ApFMWbkwh5h3pt56LoXhnLG7ohDA41kfstjmkeSQqrshKkNXWeN2YbiWFvrEUVmJXt
	 PItmFhEFOJQfBZuSVC3A6tDtiT+kN13Meg47G77Sc4d5i1I8jjmfUR3dhxNKVq05Z1
	 VdOXqxcz3e/OL7522XYNiMo1MF95Lex6Hp+BdKqRjXa0jUCyYElB5e3EilQ31K7Ct6
	 EVD1PyaO+NrhOb3yCLy4x9DKsNIApFfd7yCa6X9cqSarouqldyzRR4xBEpXWzLkwfs
	 3ThT+FDfDWI5A==
Date: Tue, 28 Oct 2025 14:21:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v7] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <299541d41bc305e65971801d06131941127eb99d.1761657613.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>

This policy is based on the Gentoo policy (see link below).
However, I've modified our text to be more restrictive.

Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>
Cc: Sam James <sam@gentoo.org>
Cc: "G. Branden Robinson" <branden@debian.org>
Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING.d/ai | 66 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..95784872a
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,66 @@
+Name
+	AI - artificial intelligence policy
+
+Description
+	It is expressly forbidden to contribute to this project any
+	content that has been created with the assistance of AI tools.
+
+	This also includes AI assistive tools used in the contributing
+	process, even if such tools do not generate the contributed
+	code.  For example, AI linters and AI static analyzers are
+	forbidden.
+
+	If for some reason, a contributor receives information from an
+	AI tool unintentionally, it should actively try to not use that
+	information, and should also disclose the incident when
+	contributing.
+
+    Exceptions
+	As an exception to the above, AI assistive tools which don't
+	have any influence on the contribution other than enabling the
+	contributor to work with their computer (e.g., screen reader,
+	text to speech) --where the contributor verifies the output to
+	the best of their ability-- are allowed, and the contributor
+	need not disclose their use.
+
+    Concerns
+	Copyright concerns.
+		At this point, the regulations concerning copyright of
+		generated contents are still emerging worldwide.  Using
+		such material could pose a danger of copyright
+		violations, but it could also weaken claims to copyright
+		and void the guarantees given by copyleft licensing.
+
+	Quality concerns.
+		Popular LLMs are really great at generating plausibly
+		looking, but meaningless content.  They pose both the
+		risk of lowering the quality of a project, and of
+		requiring an unfair human effort from contributors and
+		maintainers to review contributions and detect the
+		mistakes resulting from the use of AI.
+
+	Ethical concerns.
+		The business side of AI boom is creating serious ethical
+		concerns.  Among them:
+
+		-  Commercial AI projects are frequently indulging in
+		   blatant copyright violations to train their models.
+		-  Their operations are causing concerns about the huge
+		   use of energy, water, and other natural resources.
+		-  The advertising and use of AI models has caused
+		   a significant harm to employees and reduction of
+		   service quality.
+		-  LLMs have been empowering all kinds of spam and scam
+		   efforts.
+
+Caveats
+	This policy can be revisited, should a case been made over such
+	a tool that does not pose copyright, quality, or ethical
+	concerns.
+
+Copyright
+	Text derived from --but different than-- the Gentoo project
+	AI policy
+	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
+
+	SPDX-License-Identifier: CC-BY-SA-4.0

base-commit: cef39ff51bfd016d7079baefbf2a39f0fed7549b
-- 
2.51.0


