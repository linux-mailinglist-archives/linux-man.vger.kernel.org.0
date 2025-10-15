Return-Path: <linux-man+bounces-4143-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 713B5BDF7B9
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 17:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 685494FBDB7
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 15:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A7E322DC1;
	Wed, 15 Oct 2025 15:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW20hkRA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3931AF1F
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 15:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760543416; cv=none; b=OvUupa9uDQ1sJkzawBm0rHlbtKohiKDNro1Bz0DoT8/C5ttzC11bp5vGKiBI3zy7BQ5Iu5G4LQdUPxM3qGrF0lorv9Lkle1MgU3GBFk237wopeLBusChOU9Wn1vcjA8VNOVw9EpXPMYg2AYswowoOD+5P3KPSfnq6SrlFiLyTJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760543416; c=relaxed/simple;
	bh=PGyuPuERgl+7EYQZKb+rN0ymj19cxqVn7IQnvQjTIsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GjHfNwHSWRqbs+jIAjMtWm/A0P2CywyIKMAqeUZBTdMF5GEuzMArYs3adH58wwAtFVHkbVasUq2et0bJwsxG3EhrUp+rFTKKObCOK6FcM8wn2xgq4iuQTfdVGt77qxXfiHVNstkEQ61Xu9dI0KpokLiS/lvWxA9HAwjRci50S4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW20hkRA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80776C4CEF8;
	Wed, 15 Oct 2025 15:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760543415;
	bh=PGyuPuERgl+7EYQZKb+rN0ymj19cxqVn7IQnvQjTIsg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rW20hkRAUUIRE43hyNiHikrmye6HVHh8ZSUQkCmyaB5dxZx/0OJWTrLKcLChZ+xz+
	 K/U/L4nZzS+n3lHN99SkVNXdIMbxZPfr3o6KNH8sHetpR5jjSQtH+ogVMOY/ChjfOQ
	 wbAma0rAnNhplISNqyvGtGrJfx/E/FNJJefknCBztOuOmP9fbpSB2iYgip85TcK690
	 YHpVGQhLXymF9fY946lWza/QCpxNS/kOIx+qT/jr8nX5o9Oa6p3eSmQD+58MOyb6yM
	 pgPJ/eDrqPZmnKGPtrwF+iHa6ayZtJcqnRLuse6V2hh64j2Oh4SjK7k3pDwYInK8z1
	 LfbcZ83h6JApw==
Date: Wed, 15 Oct 2025 17:50:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Carlos O'Donell <carlos@redhat.com>, Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
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
Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

In v4, I've added a paragraph clarifying that AI assistive tools are
also included in the bad.

I've also modified 'Quality concerns' to say that AI tools should be
considered adversarial, as if controlled by Jia Tan.

And I've added a copyright notice at the bottom.


Have a lovely day!
Alex


 CONTRIBUTING.d/ai | 57 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..faab2df1b
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,57 @@
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
+
+Copyright
+	Text derived from the Gentoo project AI policy
+	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
+
+	SPDX-License-Identifier: CC-BY-SA-4.0
+
+See also
+	<https://tukaani.org/xz-backdoor/>

base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023
-- 
2.51.0


