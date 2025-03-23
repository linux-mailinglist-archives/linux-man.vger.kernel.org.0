Return-Path: <linux-man+bounces-2634-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D756A6CEB0
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 11:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C58CE16EB21
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 10:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9779C201253;
	Sun, 23 Mar 2025 10:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="cJOtOnzY";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="Z1Zbj4Is"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DCA28382
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 10:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.23
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742725694; cv=pass; b=WL8euFL1pTcPVt4+Qf5IekRsgvnYI8kgVk3ONSD5+gsl36bS6zghSQV0/9a3G6H+y3bGjaVxibXZXZnZ6psdxDNhmO9LLUY9edP6EKS4JhIYYk4iPZfk70CkWBAb5zpl58oWcMXKAIQdKiMovSugNCXd4XgfXdueHqx8Fy8zTwc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742725694; c=relaxed/simple;
	bh=T+Olu+kp54f9YP5wl4bPMm9MQP6pUrTUoVyqcd/5Wrw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gR8AmB8ZnH6gzXLinMX1Sc2d/7hcbd66YnJRDHHXApEeruZEYPniDqikjMOYL+PU7XSwj/AmAtgZn9yOjY9vM8pcd5ml/ZziSGDEDMetm56HxrY3I17S/suOcB/1nm6153BxjZj5uuynfdn13ASnIKwEEAbWSxaqVzEkxsIg9ug=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=cJOtOnzY; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=Z1Zbj4Is; arc=pass smtp.client-ip=85.215.255.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742725673; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=acWaEyKe+WSjekz71AWZcXiYx6N4kJOtGptd1B8Ct6RXoiAP8Oc/OsTqp+gKITYk13
    Bj07ToMs2GzSB2PXGTRiAGYItEg2h4gpzuYYU69O5gP3AFRobLXSed30v94DW8ISIUGg
    kd6vBMP1ES3bNpmAfwsHje9DOy44q+aAcvOgOENFe3urGw9K6pbm/K18u6Zbh/QdClgg
    Si3OLC5U53LZCI8sP23XOrdQtIfHIhULcvktsyVhhWPgyKGk0ChUWxxFajdaK/3ivA08
    7mDsiBe7CJ8ouriD5w7HXEoe4Kzd0S8/a/fu9bh4wNWhjEyBL1QqSX0TpYkwDi6qho9Q
    2lpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742725673;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=T+Olu+kp54f9YP5wl4bPMm9MQP6pUrTUoVyqcd/5Wrw=;
    b=S9RU65IyikLTiW3ATOga/X4kSZ1IWa3ruguBcRF7oqfyRsXM0uVkPh0z0JIcX+V2qj
    3j8VfOt/5R4yKtN2KWrDFK0EjX8JvClY6mpQonGtqVpbM+C3HG/nua/ebecUVEZXVoA6
    sBMMwzlUFwNBmQrp44vRS8OUSw1o1gN9S1U8/QTYeEI610AKqjMIvDOmcA55HV4pKjaO
    ugHWlVjj6DztZfH1gWRHa9oyErobX1GkidZPU1m9eZUqxHatOCnOpLwt8gYq1n0ci+T2
    Qqz0hlPwmwUEyungeUaXzMuEmZJCzKJGusviDjuRRetIsUw+OocREH7BYvFt+U+roP5T
    XSxw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742725673;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=T+Olu+kp54f9YP5wl4bPMm9MQP6pUrTUoVyqcd/5Wrw=;
    b=cJOtOnzYq0nIJ3tjDTNNTZ3eEPTDjChhXREVgtxcliZ/gZTxlKbjcAdiPvQN21DUej
    iIVDEfqV9imFfnnvCAmZqGaTi6Znq4Q2ff0D5zZUCRwyqIXChQFsYRgEe65ZHVFhxJbf
    xP4W0JXuv+IBzZgfRgIXsbGA9gLfGdUlpxgpmI0ceWe2Izoser2gcVc9UmbEVH4F1OT3
    ASXOF7/cS/JSKBn+Nlc6Yc6/0OWgkUutChZ+6BIGg+UcI3lg4LQOQhwffu+eiG0AEq1D
    s0bhjtCQ7ZpW5HDiNMg5zP1cvtVHyZaaCmlkBA3Gb4lQ6NiUEzWMImSXDv3XZkTp37M/
    B+5Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742725673;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=T+Olu+kp54f9YP5wl4bPMm9MQP6pUrTUoVyqcd/5Wrw=;
    b=Z1Zbj4IsLmmFS0wz49kiBAOEUZykOFvWhrEUv/MKn8hqv+idmnmVXr9d3IiUYUcgmi
    HNcU1HcMkwLfYkLn1IBg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqj+QRTyyQYtrOvJLmqiCHcfbcJjf"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812NARrKuD
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 23 Mar 2025 11:27:53 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject:
 Re: [PATCH v3 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white space
 are not rejected
Date: Sun, 23 Mar 2025 11:27:53 +0100
Message-ID: <1799725.K4a6FZZPjd@nimes>
Organization: GNU
In-Reply-To:
 <3c456a1a01d34385e7c92e5847fc8a22f4b48460.1742689797.git.alx@kernel.org>
References:
 <cover.1742689797.git.alx@kernel.org>
 <3c456a1a01d34385e7c92e5847fc8a22f4b48460.1742689797.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Thanks for theses BUGS sections, Alejandro.

> +.SS White space
> +These functions silently accept leading white space.
> +One should call
> +.BR isspace (3)
> +before
> +.BR strtol ()
> +to reject white space.

Just a question of wording, but it would be more straightforward to read
when written like this:

+.SS White space
+These functions silently accept leading white space.
+In situations where rejecting white space is desired instead, call
+.BR isspace (3)
+before
+.BR strtol ().

(As usual, presenting the "why" and "what" before the "how" is nicer. [1])

> +One should call
> +.BR isalnum (3)
> +before
> +.BR strtoul ()
> +to reject white space and/or a sign.

Likewise here. It is more straightforward when written like this:

+To reject white space and/or a sign, call
+.BR isalnum (3)
+before
+.BR strtoul ().

Bruno

[1] https://gitlab.com/ghwiki/gnow-how/-/wikis/Documentation/Writing




