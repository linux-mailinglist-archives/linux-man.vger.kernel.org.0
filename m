Return-Path: <linux-man+bounces-1027-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C78D75C1
	for <lists+linux-man@lfdr.de>; Sun,  2 Jun 2024 15:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FB892818D0
	for <lists+linux-man@lfdr.de>; Sun,  2 Jun 2024 13:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D640B3A1DC;
	Sun,  2 Jun 2024 13:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="jDNlvgml";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="Qhtxj0oC"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B61540848
	for <linux-man@vger.kernel.org>; Sun,  2 Jun 2024 13:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717335478; cv=pass; b=grJ+wA7+K137VQakWFog1029yOi4A9y5YU87L8o9ilH15Y6nLsEtLH91B/PBBMivnSy1TZvBZX1CK6fstRTzctQt1wTnGzJv1Of5zmZL16NMXWp3kFHVO6aIW0a9fnBRmSAKjxi1DBhKpaP3sUu08EJujKW4Q03SbHuEIWotBVg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717335478; c=relaxed/simple;
	bh=CU75iDgVUYNU+RhVzFJ5RQuMLeVAUuHTLQc4v6OWoN8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h2JFnXhJA/lWOrcBvOgIQSI2ty0JwGsKexWYAc87wKh76VE37nRYFNWKxytwPga577fLWdBcP4Zi+HiKXXr3nbcGOFsW0qaTyGVYpBgHg7698mfYI6LmPozmc0c0wjiyjO484dL6NIAr9CSSI4G7xZa3li5IB1275aDjftW1b6s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=jDNlvgml; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=Qhtxj0oC; arc=pass smtp.client-ip=85.215.255.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1717335111; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=eBsnXUrUJMLlzlAzarLGJUj5MXCUpOcTDvlUrefD+zw8h5M6m4AzFd1CziAo3Wi9KR
    8Md1ou+ArsEL/NYHvys45r4r7bBolZqxXTy0xSxrU2PbkJLEtlnO9wljfDrJiclUIp/0
    39QJUqnB+1IR1alnoXzljeXru3mdjrX6yUg+6YhfwditYMWeYjMCHvlEX0NUkJAfxtLF
    hPURO6JAz28soUkpZF9Ur9bQASL9fgVa8iiuQtzKSdn/5UwfjhHByO1QYqLuoGhr/CCB
    Mqd3fkXPe+Zi1bnz6vD+pWkHY6duUJKYcy4kT6Wg0ecYB29y7pWaslpWOpCjhn24sfnW
    mI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1717335111;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=FUdmilIhoP203nn1U0vC6hvrmA74mMhbEJaPrFDYWec=;
    b=qcY5CSp6B2JVcNlMReZ6WCavovSkF9zTLPF+eVw6h2wo3TejfFcshpNI03lZguvziz
    ZNo2xKD960ZgMkHEZpBNYdFj4uGZzaCrALFm4C176BXrqO4USiKttyAW2QzZsH06Go//
    5WIqf2Vm2LWl5fNDvpgCOXl647E/5nQCuIio2HjlYxL+BaNxve8o3fEEQB11TgjwZMGa
    a1eKtDVItheEm1s9fYEQmSC48nDDyqMqZrtHf8e9qT+40YXvC8v1izNYftLr/DbXp0xQ
    OkAVqwIKXCS9LJugajAr3nmZBhSMaywIOdazvT+eLxRSX6DyDIoU8Fnbqxmx9TadlVCP
    A0tg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1717335111;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=FUdmilIhoP203nn1U0vC6hvrmA74mMhbEJaPrFDYWec=;
    b=jDNlvgmld+cRlxV2uWwLDOJAmbjTMVusL6/EUHytAdmm2uv4u8Bks0jwdfwWDFFdqN
    Vg9KEwIBFvUMcbuCpuXR6DayI58sCNPFrDYbp+mdIjKItXXqOlJ095Z4CRQsWZPH0BJ5
    tGbXNhKrUd+le+BxBB/P2K+1+YhnzcW2gZFq89lGV2t8Cf268YCsI9tuuIOkX/VfgFXB
    1ixD1dhApDbNGRmjk7ZzWRIOl3Ey642UsVYJQCen3vOuMcsdw2yAKY67Lq2UKgpRqUgG
    w6+UpfsxyFvbk1ZYCoegk152raP1Ua6fhGs0FQaXyYMiGO5qvpESKr+4XVwQBXFnJKuN
    aOeg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1717335111;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=FUdmilIhoP203nn1U0vC6hvrmA74mMhbEJaPrFDYWec=;
    b=Qhtxj0oCG0a6S16lxwOgM4RYqxeLslXTlBf3pJcl35ba/Ozsbx1F2WSBbVjEHaMgiP
    YDnbyuiptUrhaRL9siDQ==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPD1acihFmvqn7V2YisZYMQHV5gcw=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 50.5.0 AUTH)
    with ESMTPSA id Ndd2ca052DVomES
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 2 Jun 2024 15:31:50 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: POSIX conformance document
Date: Sun, 02 Jun 2024 15:31:50 +0200
Message-ID: <4569695.4PAe9RTHqG@nimes>
In-Reply-To: <u27ch3r74mkuf4k6e6cxteclayjupwvpjplk7xcltnekhxu2hz@rb3xp7mhnaci>
References: <12722244.etNSJPHsjv@nimes> <u27ch3r74mkuf4k6e6cxteclayjupwvpjplk7xcltnekhxu2hz@rb3xp7mhnaci>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alejandro,

> > Is such a document only considered useful for business/marketing purposes?
> 
> Mostly.
> 
> > Isn't there some value in it also for regular users and developers?
> 
> The documentation for each API usually documents the implementation-
> defined behavior, and differences to other systems.  We don't have it
> centralized in a single document, but we have something.
> 
> While I don't see much usefulness for myself as a user in having a
> centralized document for that, ...

OK, so let's discard the idea of a centralized document, and document it
where appropriate. Documenting it in individual package documentations
is also easier for our community.

> > Will there be some effort to create such a document for the upcoming
> > POSIX.1-2024 standard, for Linux and the GNU libraries and tools?
> 
> Heh, I suppose not, unless some company sponsors it, or some individual
> feels a strong need for it.  But just guessing.

I agree; there is no reason why anyone should make this effort in 2024
after it wasn't done in 2018.

> In the Linux man-pages project I'm documenting differences with POSIX or
> the BSDs in the VERSIONS section (see man-pages(7)); sometimes in
> CAVEATS, if it's a tricky detail; it depends.

Thanks for the pointer.

VERSIONS or STANDARDS (previously: CONFORMING TO) appear adequate for
documenting implementation-defined behaviour.

For texinfo documentation, I guess it will be up to the individual package
maintainer.

Bruno




