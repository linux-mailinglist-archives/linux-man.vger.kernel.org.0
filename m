Return-Path: <linux-man+bounces-2641-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6D4A6CFEB
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 16:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E93047A6C5F
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 15:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C554F78C9C;
	Sun, 23 Mar 2025 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="C/ZUqVpy";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="XLmDFI63"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.217])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFADD17E
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 15:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.217
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742745142; cv=pass; b=Ej6sC6fhweRJBr+pqVR8xMruaTICDbHWzGZuLLiMC7mKbjwGy6M4IFs9FW6KmA1AKqn0KXWg+l1bvUXCq1njLJgnY5L4f/LV/3344BXqmtHifvEAfnm2nkWb2gOYAIlGJJHy9JSveQsxfydVDh1wrVIc/ClUJeu6T8vAjsWSmvM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742745142; c=relaxed/simple;
	bh=3j36SlwtZiPCtEoB5zOblbIAHGYcnUN6unY6rjSgKno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QVwi6Jui1LHk+JEV11pf42apUbQbCcS7GGOjAyRUnKN2suPkYAqnI3zTpHp3OHtISxW3u6FloSz/hA6F64TvjBqtXMhuyxw6rwaKbGYA2dGRoiwylvlsoaG777WXwnLzSKI6LtnrJ4+92NF45DnUoBcu7iyS8DBMjmTRX7f6qc8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=C/ZUqVpy; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=XLmDFI63; arc=pass smtp.client-ip=81.169.146.217
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742745135; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=N2A/d8oy/MElycuSWyAZ8SrGKgusj+6koz/8w0hVGiRLb6adXEq3bZbu9Eb+kmEwrG
    Ev/JZnEYmfKCv089vsPeNN8HhNQuhfN+VxR2dzQ7hCW8nyJZT8ALkVVX/cW8PuCmBEOh
    6O7ByS9geLskHG96wVK4rmsObyJDbN8dXp/1M71ebSU6h/RSLskYrUFTXKDNQVfVHv49
    aQq+NHYdzJJP3KL6vx8mQOQm9o93u6dD/MXqaGHeOXhGhBxNCNVXITKEImDylnWMf+Nr
    pva8Nirmb8dXFGclNTTLsKcUXXPm29rKEGzzD313N3IzEHGDC1lmMyz/zbCC//LPb49l
    c2mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742745135;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=TDB6lbzhcqLLOxc3kRHxOOtS3rRv85hF0a11PxtEiQk=;
    b=svu9SMfeD2ZQ6F44k7/sdKsYEx+UxJTfXyR/9lWMsvoTjcu2p3P2lNGRsQFbOyiQSg
    v7GhrntPrfG3zFu5BJyChpK/JudjK6P9J2+iCntEfcf/2w8ng5MhMPOwCQO9G1uMP9Il
    zmkBWRjgtDNnNWlvoAvxoT3wIeQY1YMBoUs+pZke3iK0JriF6CcbagSOx7pODScNBBo/
    AcdPYMKMQqdfA4WJ/pwh5dxfAe4UMN5a6w5tw0hdTleYmK4CBbMRC22BtqZC3PCX3Ehc
    ImMU9TV/e7H2gVTiu0vC/1864htDlf9jdLG+g9+x2Tby8kRLcSePfsQpOXDANNsf50G9
    BINQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742745135;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=TDB6lbzhcqLLOxc3kRHxOOtS3rRv85hF0a11PxtEiQk=;
    b=C/ZUqVpytyKx+XQgOHbA/ldPWVbeCojSQUqR+VjpBKGStGvLGReVAirRMnrJTMfoSK
    RpxBJ0LIhpxTTzna1Y7mncTip2KqjsFESve3kDmF8HPN5P046aiy/CEJhKXUhrc7C1qu
    blo81+OAXfW+fagEzKGs+3fLPj224eUdjYPVwckjzJOHOOrVk+8CYGjLbEwmuOHXMwsz
    9SXab2OXxsZNjXu6Perb1f7vlGqjJKOnK7QPBDQTB2v0D03PUzdTF0d3c5MdC0yuHTi0
    h55rXlXcwLondylHoxhqq5/bzpZn1ZHyG5i5Bd7HA3F6Lyu6xDjFWVbMfV/mpw7dyCCm
    tnpA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742745135;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=TDB6lbzhcqLLOxc3kRHxOOtS3rRv85hF0a11PxtEiQk=;
    b=XLmDFI63OTnoYOtUxvWfDIsv9lJu2Odqk9QujzNtyk+pwAZnjsdO4HwxaFTjDPk906
    KOdNSMIamo2lleIM4SCw==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqj+QRTyyQYtrOvJLmqiCHcfbcJjf"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812NFqFLOi
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 23 Mar 2025 16:52:15 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject:
 Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white space
 are not rejected
Date: Sun, 23 Mar 2025 16:52:15 +0100
Message-ID: <2092070.kUgFBCI4xA@nimes>
Organization: GNU
In-Reply-To: <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
References:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Alejandro Colomar wrote:
> Is patch 2/2 also good to you?

I couldn't tell without looking at the entire page
("groff -Tutf8 -mandoc strtol.3 | less -R"). But now...

> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dcbcf76d19f864da8c54e41b600ff5661b195b58e>

you gave me the information where to look at your work-in-progress tree.

Here are my findings on these two pages:

* In strtol.3, the example has three mistakes:
  - Missing semicolon at the end of the second line.
  - If LONG_MIN < min < LONG_MAX, the condition (errno =3D=3D ERANGE && n =
=3D=3D min)
    will never be true.
    If LONG_MIN < max < LONG_MAX, the condition (errno =3D=3D ERANGE && n =
=3D=3D max)
    will never be true.
  - It does not distinguish success with value 0 from failure due to
    no digits. (This matters when min <=3D 0 <=3D max.) Since errno is not
    guaranteed to be set in this case, the caller needs to look at *endptr.
    The example thus becomes:

           char *end;
           errno =3D 0;
           n =3D strtol(s, &end, base);
           if (end =3D=3D s)
                goto no_number;
           if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n < min)
                goto too_low;
           if ((errno =3D=3D ERANGE && n =3D=3D LONG_MAX) || n > max)
                goto too_high;

* strtol.3 and strtoul.3 mention
  "If base is zero or 16, the string may then include a "0x" or "0X" prefix,
   and the number will be read in base 16"
  They should also mention:
  "If base is zero or 2, the string may then include a "0b" or "0B" prefix,
   and the number will be read in base 2"
  References:
  - ISO C 23 =A7 7.24.1.7.(3)
  - https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D64924422a9=
9690d147a166b4de3103f3bf3eaf6c

Bruno




