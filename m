Return-Path: <linux-man+bounces-4199-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E37C0FA24
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 18:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 493B219C6748
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 17:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7023E30F55E;
	Mon, 27 Oct 2025 17:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmQQUYXm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2912DA777
	for <linux-man@vger.kernel.org>; Mon, 27 Oct 2025 17:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761586152; cv=none; b=h8LEJe4iBeZn3V5Ka+vE1xuZN/CXwC1CdHH3Z9SD8dIysrIQE1i0XKM0cfDg9Uh1Y4M0pfucDZ08Br/14TkMt3b2YNdfaUzkRRi3SOUJufJT0aWoudGQBV8Zbqa2wAuoUz1TuPBckwSPm9tPQMFREzTEWwVsetiS0V/cMmHMg2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761586152; c=relaxed/simple;
	bh=fU+GsW2+PIzQDCxb3ti4rXgAybY6unmctx6l0Y37Wto=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GulBryfvGfIKezQcZHY8fyQDBg5Wo2qWDGVVf5fO2ZldG6MSWheoDAZt5Y5EIrbRD9Ulh85i9QutAzwO7D+SgzlTi7VxGkT8JRvo1BHxIn8MqHkdbBm8Lug0tEGKSyRcBwEd3YZhcAb58+UN02kopBJaIDoIeBRIGps+Fm56cZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmQQUYXm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40B2FC4CEF1;
	Mon, 27 Oct 2025 17:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761586151;
	bh=fU+GsW2+PIzQDCxb3ti4rXgAybY6unmctx6l0Y37Wto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lmQQUYXm3VEBy6iLMnPz42gD4QHMBoNcZAJUdtOfUvigPjifSrFZf9gE6rPouUPyo
	 9wD9N6uI7V7NQAMAluxvpwY8VjpmwHxdDvdAssFdAZoWKjnwJk+haxSawpCIIwUKaU
	 w+8gmH3YY7bdT4dfGz17slpEoxjMPb6WgeryKysfGS/8BFWmwmNbu89IwjOJEkQCCP
	 4EOMEX5moLX4UEkL/jL9PJ3fiiAbE5TQWd6B8l/ZpTDM8VRGCj+MxWuxGBC7VFs9Rh
	 2Zcxw6yUEZdO7SfGW0uXNED14y8c+ODo5jZrr6GVPz7P2pX4uwqPF1du4JkIFzSMfS
	 1AwTJY4NBj9Qw==
Date: Mon, 27 Oct 2025 18:29:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v6] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
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
 CONTRIBUTING.d/ai | 68 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..63cf3d548
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,68 @@
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
+    Exceptions
+	As an exception to the above, AI assistive tools which don't
+	have any influence on the contribution other than enabling the
+	contributor to work with its computer (e.g., screen reader,
+	text to speech) --where the contributor verifies the output to
+	the best of its ability-- are allowed, and the contributor need
+	not disclose their use.
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


