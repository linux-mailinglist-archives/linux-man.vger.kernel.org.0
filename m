Return-Path: <linux-man+bounces-4284-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4004C4672C
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 13:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51A1B18967D8
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 12:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E8F30F939;
	Mon, 10 Nov 2025 12:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP8Kf0m1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4902E306B20
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 12:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762776087; cv=none; b=TfaH4kcAc84mGYCzuNpiLiwx6j8+3MQSgNhHGVqwr/BUtZpITiOUkvYaGa9Mr4RRoxFtfSwc8duzNzxk+nGYZuPhXTo9IEma0WVghjefGK3FfSNYpEGqKjLlu2vR0abCc2wzfEUMK8CB8OUc30+7VT1i8Nb3mz7UVG8QE/2btSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762776087; c=relaxed/simple;
	bh=6SauGTnhS8VYWxwfK0qXT0GX8N2gnvGBKih4XxEyr8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eVqMKld1stp/xoYyRLgE+Ac9O5Iy2HndJiNdwBcNR/Z5gBDCDd9/+eVYyGXpC5JGtjgLDyj0W4TFc7exf3rAV+IUcgbVhxAySMKArxTjj2Ixsej4hQvDTOxBoxWZh4Ft8BY3MEedYrf5f6BwyS3A1G0xRBu83lgDDX9rLuhJ/D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP8Kf0m1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF9B3C116D0;
	Mon, 10 Nov 2025 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762776087;
	bh=6SauGTnhS8VYWxwfK0qXT0GX8N2gnvGBKih4XxEyr8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LP8Kf0m1CYMA/Mw9gTN9ggY3+A2aCvDSaeKf90YARKt8vptzwCfV+TeDNrOIpf53N
	 6WzF9J39bYkIpYXVUbjBDSXimm4zcd7NbjzeU7tZortRhOS4Od+uoX/LtOxTly/Lgo
	 Kleo9SHRQDV5SFaHq6rp5fhKcsyDMX95lve73CQuLAqp7sCUxVtDuB9zPITQhUhsCz
	 B7J/j7S5c5bWF1x2Jj6/xF6Zev9vpFqG7K7BgBsSd7t71H3kP9o5PUj04XJn4WV96k
	 nFwB5X4coUKLfTs/xzyKFZncCc8Y40vma0WIPH+VmUug4AVI9jEBiVrM5iE5ZY1cF2
	 GFU9tpuQIw6/w==
Date: Mon, 10 Nov 2025 13:01:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v8] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <b40a7c44ca89740ccea37852d09d11b6130de53d.1762776026.git.alx@kernel.org>
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
 CONTRIBUTING.d/ai | 66 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..8443bbcc0
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
+	code.  For example, AI linters, AI static analyzers, and AI
+	tools that summarize input are forbidden.
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

Range-diff against v7:
1:  299541d41 ! 1:  b40a7c44c CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
    @@ CONTRIBUTING.d/ai (new)
     +
     +	This also includes AI assistive tools used in the contributing
     +	process, even if such tools do not generate the contributed
    -+	code.  For example, AI linters and AI static analyzers are
    -+	forbidden.
    ++	code.  For example, AI linters, AI static analyzers, and AI
    ++	tools that summarize input are forbidden.
     +
     +	If for some reason, a contributor receives information from an
     +	AI tool unintentionally, it should actively try to not use that

base-commit: afdd0a64c5bad49d6030ddc488951aeb50f0b88e
-- 
2.51.0


