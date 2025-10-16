Return-Path: <linux-man+bounces-4172-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F5BE4A59
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 18:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 504C119A4FAF
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 16:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E553F2DEA9E;
	Thu, 16 Oct 2025 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J59oVhDq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EC61DF970
	for <linux-man@vger.kernel.org>; Thu, 16 Oct 2025 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760632914; cv=none; b=Qdr94opqbgL0L+D29iZLGCphbJIJDXHjapzM8PORaTE+1P5Oidx+hglt6ZC6CpDZOgYbdLrsLpKKZ4vvwd+5GxH2NuMkd3nVMaOmczcLQ1dHdPyT4qpKktELyarGMvaxrVrjwhUJKoqoPvyZcquKOG7NRwDrBD+CDW0adiYBcm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760632914; c=relaxed/simple;
	bh=LHqfbHDEb0H+4dSKdepwyYWImZCSGlK/xtpLHrE+Nic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J2c4eDf+Wicpef1dbs6/UuIrPA+htZPTCD5pvS4czlAhk717lQNase+R0ksLppBWSVjR3ymydRmgoJVY9qqXvHTL+eYV7PqLg6aZfSzQygYe+rQxy5+oirDAgm2oUoKGFFlD3yr64zzKpknHPVTgUCAgEAKj8pAVKQTJx7Qx4pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J59oVhDq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1CA2C4CEF1;
	Thu, 16 Oct 2025 16:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760632914;
	bh=LHqfbHDEb0H+4dSKdepwyYWImZCSGlK/xtpLHrE+Nic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J59oVhDqsS7T6WWU0TAyN3z335EzZok596Hgsub5bToSFf7JBjex21w0e1WRTrVvi
	 G6Wtqo9CDObqUtm0/t8fXbFFc2TKxv4x0GtEuFbQ9+3Q31bNuSTU4COAuwVbg6DY9x
	 jKhQBpy8xbhpMKr/VE3KthWnqUVZxhpx8MDq98Yo6k0wJ1WY8UppuV+069vp1MnBM9
	 EjS79pQXw9wwmkmJUOkfmBqSpwn1GZXo3vdL7HU94Idq8EizlbC6JsujYxJMDQJtcE
	 QuvVOuiCD+4/1Kny7xq9y+XkHqCuPaooIndv1jetdxDEN2k0U3xjIIWjIqHPtZQN1Q
	 ayHXPbU6AicLQ==
Date: Thu, 16 Oct 2025 18:41:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v5] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <1bb0cfde967ecb12f6d3df2106388121647946e0.1760632863.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>

This policy is based on the Gentoo policy (see link below).
However, I've modified our text to be more restrictive.

Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>
Cc: Sam James <sam@gentoo.org>
Cc: "G. Branden Robinson" <branden@debian.org>
Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING.d/ai | 65 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..269d62d48
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,65 @@
+Name
+	AI - artificial intelligence policy
+
+Description
+	It is expressly forbidden to contribute to this project any
+	content that has been created with the assistance of AI tools.
+
+	This also includes AI assistive tools used in the contributing
+	process, even if such tools do not generate the contributed
+	code.
+
+    Exceptions
+	As an exception to the above, AI assistive tools on which the
+	contributor depends for health reasons, and which don't have
+	a major influence on the contribution, are allowed, and the
+	contributor does not need to disclose their use.
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
+		AI tools should be considered adversarial, as if they
+		were a black box with Jia Tan inside them.
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
+	a tool that does not pose copyright, ethical, and quality
+	concerns.
+
+Copyright
+	Text derived from (and more restrictive than) the Gentoo project
+	AI policy
+	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
+
+	SPDX-License-Identifier: CC-BY-SA-4.0
+
+See also
+	<https://tukaani.org/xz-backdoor/>
+	<https://xcancel.com/spendergrsec/status/1958264076162998771>

base-commit: cef39ff51bfd016d7079baefbf2a39f0fed7549b
-- 
2.51.0


