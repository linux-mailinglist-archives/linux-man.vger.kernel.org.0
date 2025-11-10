Return-Path: <linux-man+bounces-4287-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DB5C473F1
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 15:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A0693B48B4
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 14:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193EA3043CB;
	Mon, 10 Nov 2025 14:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msmm9X+P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC58822157B
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 14:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785369; cv=none; b=ZnRvRS+rKsLM4YYXbaGx0z+RGHVWqsFcaobhF2a8vqZHKucGoOqjj0sAFO+em4iGQyEaqi7gGMUDVZ9JHknRI0x7ScnZE9lZoM0EixXAMer6B0QCdFKEsY+3N2daOAbG6wof4wJpescUMxGMcMX3U2Zshq3yX2m9t2R/beIPboI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785369; c=relaxed/simple;
	bh=Q7rA9FeFvnB3F8DnsKq2e5l2PpdhQNaD7BwJxUHoD8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qxPMlLFKSJkoJBdpK0EhH7uacsSB69H9RlDzF0vEBavgrxOJ0d90jlYlJHLrM8aALKmfr2vafRVhhRp8hsiR2fg2+iwIrEU4HWHT7wUkC0LPrg2o5LoJQ7Sj1QKTR/hqM4GGRRoAi+bT21iiSzQR7qAIcS7w3+tH1vTwmmY4yv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msmm9X+P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE175C4CEF5;
	Mon, 10 Nov 2025 14:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762785368;
	bh=Q7rA9FeFvnB3F8DnsKq2e5l2PpdhQNaD7BwJxUHoD8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Msmm9X+P9cV4UnRpdrKEgukHNsLCMOpcBoJ457guIW56w28mnX81UarUxZp1iZO2d
	 YEXoBjmftD1nLeU82Laei2jvJkzgXuwsTirFmTqE5XNFaGsXEqBcGRzpjhl6F/VYDs
	 O6xjkTQ5UR8ixMh3C5RgyGECYeBqBDzT3e2+r0M3m0pu/QNFaS8g5F6COZ9i7iRKZz
	 w9UUXjiOSRSte7VPtNvyPNcslwr59dnJ4OjQzzUuP1f6sIZdlakJKMAGC69k0fcREh
	 4zLMb918X+PrgjoVBXQA38wX62/oRUfS+Gn5qHhrZ9NTBmXJMJWgWLR6OWexdt6iPi
	 YWcFoqv2plvJg==
Date: Mon, 10 Nov 2025 15:36:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v9] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <999614b18f0b6740603b3df37530144148f342b2.1762785344.git.alx@kernel.org>
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
 CONTRIBUTING.d/ai | 63 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..91d767785
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,63 @@
+Name
+	AI - artificial intelligence policy
+
+Description
+	It is expressly forbidden to contribute to this project any
+	content that has been created or derived with the assistance of
+	AI tools.
+
+	This includes AI assistive tools used in the contributing
+	process, even if such tools do not directly generate the
+	contributed code but are used to derive the contribution.  For
+	example, AI linters, AI static analyzers, and AI tools that
+	summarize input are forbidden.
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

Range-diff against v8:
1:  b40a7c44c ! 1:  999614b18 CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
    @@ CONTRIBUTING.d/ai (new)
     +
     +Description
     +	It is expressly forbidden to contribute to this project any
    -+	content that has been created with the assistance of AI tools.
    ++	content that has been created or derived with the assistance of
    ++	AI tools.
     +
    -+	This also includes AI assistive tools used in the contributing
    -+	process, even if such tools do not generate the contributed
    -+	code.  For example, AI linters, AI static analyzers, and AI
    -+	tools that summarize input are forbidden.
    -+
    -+	If for some reason, a contributor receives information from an
    -+	AI tool unintentionally, it should actively try to not use that
    -+	information, and should also disclose the incident when
    -+	contributing.
    ++	This includes AI assistive tools used in the contributing
    ++	process, even if such tools do not directly generate the
    ++	contributed code but are used to derive the contribution.  For
    ++	example, AI linters, AI static analyzers, and AI tools that
    ++	summarize input are forbidden.
     +
     +    Exceptions
     +	As an exception to the above, AI assistive tools which don't

base-commit: afdd0a64c5bad49d6030ddc488951aeb50f0b88e
-- 
2.51.0


