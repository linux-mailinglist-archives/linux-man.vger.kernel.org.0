Return-Path: <linux-man+bounces-4270-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C94C5C43DD1
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 13:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FF401881D6F
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 12:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 956702E975A;
	Sun,  9 Nov 2025 12:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ispras.ru header.i=@ispras.ru header.b="nD/ULTM4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3071FF1B5
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 12:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.149.199.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762691948; cv=none; b=HDB2N9Klz7GJsMtniwSvs/rMvwocQ9KQ97ikWUb24QhIGknnO2bWYYP0ja8gCUAK1LQMDurGCH5l8z19cBrwQcU+oiwiAGrMQosd5q5hSd3Bgpj6ul8FtPoZMvslRn9hz6E72yDZYgh1Uqjk3J44xTJL1POwtOAAEoLWr5cOWIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762691948; c=relaxed/simple;
	bh=A+ldDDExCgDCdqCMZHa2SUmYdwAK/vDcnPXStew/CJE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=MYI7gW8i6k+pLPy2yJ48H2JyZTjy1goFbYM3KMnBq8mRYci7KEkXRFe+e+dnmTPVlR12ewy4GmWTanaZ2+Qj4PgGodmQonEphyJYI+iqPoK/auqdo0EW8sUZEBqTxRDYRZOAzqFZ/y+PxzWHkCYX07oOOse6pg4ZBrMOQCKhyAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ispras.ru; spf=pass smtp.mailfrom=ispras.ru; dkim=pass (1024-bit key) header.d=ispras.ru header.i=@ispras.ru header.b=nD/ULTM4; arc=none smtp.client-ip=83.149.199.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ispras.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ispras.ru
Received: from monopod.intra.ispras.ru (unknown [10.10.3.121])
	by mail.ispras.ru (Postfix) with ESMTPSA id 57B7C4076733;
	Sun,  9 Nov 2025 12:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 57B7C4076733
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1762691936;
	bh=e+TKB6e/13iCu51JwV3NsJZp27mXZK0uFG7zWKbiOEM=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=nD/ULTM4LfvG1jxecB+QK+t0Qvahv0zr9VPr2AM8pK7XvqMpeiQB1MNE5NUuAMKlS
	 C2rpR5CgKKgymRV2Be+thldIkgNj38hJRoXYSKsWe0Gf4h1UXs4y8czuhYIWmS4dEN
	 sy557uBI/g1YGIH8rft86SwzKxTsbbGtw8hjjGCU=
Date: Sun, 9 Nov 2025 15:38:53 +0300 (MSK)
From: Alexander Monakov <amonakov@ispras.ru>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/flock.2: Mention non-atomicity w.r.t close
In-Reply-To: <u3b2gz7gc4iwrwomngg2gioxscu6lwucwl4egdhovh52u7dakb@knipbilujfex>
Message-ID: <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>
References: <181d561860e52955b29fe388ad089bde4f67241a.1760627023.git.amonakov@ispras.ru> <xvwzokj7inyw4x2brbuprosk5i2w53p3qjerkcjfsy6lg43krm@gp65tt2tg4kw> <u3b2gz7gc4iwrwomngg2gioxscu6lwucwl4egdhovh52u7dakb@knipbilujfex>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

(dropping Jan and linux-fsdevel from CC)

On Sun, 9 Nov 2025, Alejandro Colomar wrote:

> Thanks!  I've applied the patch, and appended the tag.
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=afdd0a64c5bad49d6030ddc488951aeb50f0b88e>

I've noticed that the last sentence had 'the file is still open' changed to
'the file were still open', is mixing plural 'were' with singular 'file'
intentional? I'm not sure about the past tense either.

(and thanks for fixing semantic newlines for me, I managed to do that
in the first sentence, but as I was fine-tuning the second sentence
it completely slipped my mind)

Alexander

