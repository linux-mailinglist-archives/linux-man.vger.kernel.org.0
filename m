Return-Path: <linux-man+bounces-2644-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D254EA6D030
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 18:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13654188D281
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 17:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5E913B2B8;
	Sun, 23 Mar 2025 17:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="mdESr0H6";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="y9srq/IO"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5EFD3595D
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742750096; cv=pass; b=AbdE7sEfbrvzsyxsqHA7vjsqjVObzvTqxLagwD6F02mwhhsuHV2L3+kcKWqGciomoYSPRKIPFoJ8nxBEe7D5wj/4w6l3BdL0VkYTusiJD2SDsgaEfS2f87dR6gqNnPYyB3mpgsaTnhrDRRrxPAPMhAzlaAR6hDWNWX5aEH/pPhQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742750096; c=relaxed/simple;
	bh=QNV8tT/QZrGr/mkzO6GXYLeNQvW51Tvq4PggFEH/aLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GBn7i0SIbONvMpjJ3Ds3I2Tp2/CHmIO/ZhHbeMR/kgAGYpPqv/44y9slbaEOITi1tBEBqf3rfhLxxpxbTmrvcgxY2ccKcgLIlEj+sgbJc2YqoTOwhaDMDLAj65balGi223X3e24PNZhJzjpy/0/ZK+dl1R8TNnqAJ5uDFoYSjbQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=mdESr0H6; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=y9srq/IO; arc=pass smtp.client-ip=85.215.255.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742749905; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=mmtZS0o355wyNgGTbLsAyXYkDZzYHT31MCORBMkypxGDDGM0rndhzYeBhl7KXB5yJy
    2SPdQqrC8+lHx+CShauKGQ731EX4ajSmr4IqSVHenc/CrYyGhjgnLmQ8RIqQpeL44ZIM
    h0Y3M1SgAJHxmfVnhBsB2B4R9y45N+0nnyQRB7FJx9+vPT2AhTgXOtflRKnPqzj32fRo
    1JKBsjACacb6qKbi6Rcp7fO5fjZBiotbwhG1kmEbJiCG8wqMeXfnySeeqRu4niNqHL/7
    Ba5uo4U3w836rQDGfm3I1aFOfjazlO7quqMXhcS+vrL7GGvb/MgkFLAtm0MBT0XFtvVt
    InYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742749905;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=VdZO6ys+aBvl+3ErsoC0wMnqxxnLbfyEJWWx1C1ahSg=;
    b=UQa52rHSQomFL5mBEBhw+5hnc7wYDOuu6+OqZP7d280S2u9HO+m6OVXttWxCARlLUn
    PlQSGoITr/YJRkV1cnEF3Ms+JN+gBl7dgulWR7b0s85CjUVE5fjpqazWwyw5hzQW2Dyp
    eXx2mivaRr7u7P2+IZSCktT+35aUyFMMPoGzg2VAt+NX8NybngZQusjU/GowAd1JBKHD
    Ht2seXXkRwY+YM8+WZYTrrV7pjtms/taNMk16qdNG244nR5NLoZxmH8Y7FdX6jEJn4WC
    lkj/Y/nOf67bLRZZD44XBG2HtAKHcXPX+4kK8y65cZ69PM9u+6R72OTohrokW08tv22v
    Xyvg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742749905;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=VdZO6ys+aBvl+3ErsoC0wMnqxxnLbfyEJWWx1C1ahSg=;
    b=mdESr0H6Iia39g+k7eYdPlu4OdlyCLD3ajMePAdjL8gYzdO2+eJuBdLa5rKhnjnZ1r
    Bhz89omttPagBzTFV/6/a1PUoQJC7y12yGWXF2iCBQBu2iVlZbfnx9/5A+sFif8P3Grl
    v5rGJea0II1DN5Gy2+T8gZDCSL0k+xm1caZC9GhHM/ybdMJu0keXvnFIO6jVPODCiUEs
    w0F/v4aRfFI6LgcAnHoXkNhRgK+qjPYbjBOhtLteLeSkOpKJPlNQgXW2V0+VjoDGPmSP
    zviZBdTpa22GbgG2hy339p8BsWrvnnlJC8Hrc5n/Y3gig29eEgjaRBcJ45iucBDHGmRI
    atUg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742749905;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=VdZO6ys+aBvl+3ErsoC0wMnqxxnLbfyEJWWx1C1ahSg=;
    b=y9srq/IOTcnzQdK1OeTQBth89jeYy0DISvagCLPRfVXCm6mM78lYqlFZRj7SPjHEPe
    8IwpljDXdVw1ma0RiOBg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqj+QRTyyQYtrOvJLmqiCHcfbcJjf"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812NHBjLWN
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 23 Mar 2025 18:11:45 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject:
 Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white space
 are not rejected
Date: Sun, 23 Mar 2025 18:11:39 +0100
Message-ID: <19368838.fAMKPKieAE@nimes>
Organization: GNU
In-Reply-To: <h2rhdhq6vxq342ateopajd7z6krccemqbfecedsuiyuhhnl4fk@gvvoxoycovdc>
References:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
 <h2rhdhq6vxq342ateopajd7z6krccemqbfecedsuiyuhhnl4fk@gvvoxoycovdc>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro,

> I ended up doing what you said:
> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=ebe5a89dcd431d15c54ebc22eaa35721496fee4b>

+if ((errno == ERANGE && n == LONG_MIN) || n > max)

Here: LONG_MIN -> LONG_MAX

Signed-off-by: Bruno Haible <bruno@clisp.org>




