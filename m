Return-Path: <linux-man+bounces-4136-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DE3BDE3F0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 13:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAD9E19C3F0E
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 11:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 063073168FE;
	Wed, 15 Oct 2025 11:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQKoOGpN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF05D1A23A9
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 11:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760527266; cv=none; b=ejVjprHb3pqD3TKfP0NGmbZeTwf1yPpwHzwHvHpvvPAe+ai76ro02Y72wBievfYe2Qgnt0Jhd+gGBIyASA97A+gPMwl/lOwJnD2dn6tAYT4GvNSrgKzX1H4NS2RhP4ygyFVsJ2wkDTbsgx/s+lgMr7NS0RI3Lfpx1d3Wq8UCgMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760527266; c=relaxed/simple;
	bh=/xrzOIPoNitG3p38J7nhU0uPjEyfll62VtVUREfILkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ulud/GEKyjJRK0Caqm/rhFT5xzn4Yx8brQPsQyUgd19/PAasJIQTLn5yn80S5UaS5+0Ci7F7tz8QlbE2BQ0EMAoNaTt50g343PTqHiyFpaW+oVaOJS55R101qMohDYFa5XkFjYJRspd/IlBY8+4Hq7QkUq2QSasBp8qUnrtiSmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQKoOGpN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFC99C4CEF8;
	Wed, 15 Oct 2025 11:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760527266;
	bh=/xrzOIPoNitG3p38J7nhU0uPjEyfll62VtVUREfILkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rQKoOGpNO2D2xyn5jM2Rbkfn5trvWGoEYKYxvyCwLjBcIuYm43HHnZQ1A1yba6rkH
	 zsOnFRQxkfKNEQiFu/HmfbSW/gCPuieNAAbbV1IjgWTLgtG4kU02N4hUBSjkiCDgkb
	 sHaVm//dpdwzsdYw/GKBrTMllDFr5tJ5ez8w4Gmiv1c9p5VcPy1UrW1DIBYeb7ii6U
	 2sJM/c9devbFTkKesB4cTPZlWrjDFMiHEwoK0BrbQvrW4y5zvHJMpzo75WGQSS+dg0
	 HFTX1u6rfiRy3H9O2F5ZP6xJTt6fzOYq06ro+Pbqaft0oCuhyiRaupzKdaLdb9Fc7w
	 vVHkddMJi+lbA==
Date: Wed, 15 Oct 2025 13:21:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
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

Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>
Cc: Sam James <sam@gentoo.org>
Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

I changed obvious wording, such as replacing the project name.
On top of that, I removed a misleading sentence:

	They are capable of providing good assistance if you are careful
	enough, but we can't really rely on that.

I don't think it's possible to be careful enough.


Have a lovely day!
Alex

 CONTRIBUTING.d/ai | 42 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..92d5d85d6
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,42 @@
+Name
+	AI - using artificial intelligence for contributing
+
+Description
+	It is expressly forbidden to contribute to this project any
+	content that has been created with the assistance of artificial
+	intelligence tools.
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
+		looking, but meaningless content.  At this point, they
+		pose both the risk of lowering the quality of a project,
+		and of requiring an unfair human effort from
+		contributors and maintainers to review contributions and
+		detect the mistakes resulting from the use of AI.
+
+	Ethical concerns.
+		The business side of AI boom is creating serious ethical
+		concerns.  Among them:
+
+		-  Commercial AI projects are frequently indulging in
+		   blatant copyright violations to train their models.
+		-  Their operations are causing concerns about the huge
+		   use of energy and water.
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

base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023
-- 
2.51.0


