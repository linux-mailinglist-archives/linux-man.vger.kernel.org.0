Return-Path: <linux-man+bounces-2624-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F698A6C531
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 22:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9607D46016A
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 21:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F511E51FF;
	Fri, 21 Mar 2025 21:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="g1qwzaCL";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="FVjDiAJT"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554912A1C9
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 21:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742592711; cv=pass; b=R4OLzF0NmKPKP0c+yfr4mCd+oESR40RrxZNWCVONgw9md4ZqnZLOh9ZiYcZe3MndvuN/AJOGoBN4NTMNoE7pdXuzdH/RAtOFIg4/q/VKONq1V6XrmHXOTlIDL/A6k0/hl46JwvEgeQlB4IdF9YiYLvdF9jcjS+O3+kguJH5KbB8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742592711; c=relaxed/simple;
	bh=ddkUlfbdXgEugQJqSG0lPHQBna9i0KhwI+T9JtABAG4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IVYGBp3vqz47fjDEbz+WVNcKz29ar4CmoU+VZDecY1hM6ViFSOs1wDckPFln9W5R3cKtCbCou9dgBG5QaHl3xgimh5EHHzBe7y22vkBPCe52wmTWcoNVVvQdbmHEYz+97MXnNVz6Nt5RyjeUFUU0Z1RaEVJ0+VZvU4oKy/JT0o0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=g1qwzaCL; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=FVjDiAJT; arc=pass smtp.client-ip=85.215.255.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742592700; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=fj8kTirGXyrr+BsmblVVEIXGZdE0Me4ueWchvzVfng9xSHuyxyXAsQ69EpWQg3JknE
    h0Ssf0UI+w9ADntdnlaWCSc1k5cZwDzVsefKqw569HV7ADF8UBNqwFSf+7bZl2Lzrk7a
    meYqkZcluQpSyjkfzArva630XlI9BY2gND5DBijSSPOmulzkHprad5HgG3BqnRJHBLQR
    K8HwcZMgCGf7IObWpuLeVD0Fsg11N/LJ1465P7gv1pVNFV4oSC1o7S77+Pd/nKka8mse
    riGaDhzUoUIw7DAiK8BNs7DA5SG5FFLMMUK3q3Ju76JeyJfEUxRhhYN7gCxrnbANEq1I
    ntKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742592700;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=/G7jBm2qCuhRGLa804R01k7BD8+S4Hg1USZlwK4Buj0=;
    b=buiT+dqswlQ9pM0OYDGxnzIzgo8FFEWR/c+0Zf0oU4YD03R8CswiSDg1yKD0wO0BQg
    Q8P4x5KdTAkPvk9Y5HJFClZEoZDjOOgc8WTdj+plsRAH1dfbejt47RRuvxgp2brpEFr5
    yM+yJpJS7Kp/MM2RBa1JwqcjhRppp+VysYQtBLhKnXe1dvBUAoTQD7a3yXgMTplLKvPg
    Dx9RJGLTXbscI/5IrEYfDVj6DsybjiLfzfp5d3WFYH+Vgw5VPT+UviAKQwOH3VQ5+fZ9
    O2OrQRd0Xwy602qd7NPhtQyNXqUsWqhfZXZi6fjAghIXIuX00kEK6y1yUHINdhr1Oud2
    UfyA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742592700;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=/G7jBm2qCuhRGLa804R01k7BD8+S4Hg1USZlwK4Buj0=;
    b=g1qwzaCLNfSudI4f2RSULk4Ya9bN4xHo/FngTlFeDULjkl3ruZr70z3SanAZqyMIIE
    W/gB7T7ki8EwEpunksgqwSh1qK08z3JQUtPv066gh0OmasG+gCxImjthhGCpHQywhbLz
    2eRfoOkvVhMxndagJFj4tXBojqVUTkNoydoSf1bRSmNmoUJq4oF8dbBef7yzquURwbV8
    jLw8kzt9gwrgrLt/E/Tigky4A3Tv0qvRXR19ckByfGorDvpZpQNfcSbgYzfDswm1Y8AO
    /vnNNrij5An2qcFlae1W+riLs1Eq827JsbDJ4BYu1Mix42xX5UZneGJsb8IvRh547xH3
    VUsA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742592700;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=/G7jBm2qCuhRGLa804R01k7BD8+S4Hg1USZlwK4Buj0=;
    b=FVjDiAJTDlw4AOIa5wQN1FsNfmhFEPeVN/jhGwCv2pVLyGW4oxBbflDkXGHMGdZuBd
    0eKlwDAQSk7a1AUZOTBw==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqjudQGqu6PE53xUYf1X3lkG4dJM="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812LLVeID9
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 21 Mar 2025 22:31:40 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject:
 Re: [PATCH v1] man/man3/strtoul.3: BUGS: Signed numbers are not rejected
Date: Fri, 21 Mar 2025 22:31:39 +0100
Message-ID: <5145342.a9HWlOh95j@nimes>
Organization: GNU
In-Reply-To:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
References:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> This is one of the patches I will apply after your report.  Please
> review.

Looks good to me, except for one line in the sample:

> +	if (!isxdigit((unsigned char) *s))

For a general base, this should be

          if (!isalnum((unsigned char) *s))

For base <= 16, it can be simplified to

          if (!isxdigit((unsigned char) *s))

For base <= 10, it can be simplified to

          if (!isdigit((unsigned char) *s))

Bruno




