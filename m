Return-Path: <linux-man+bounces-4536-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E598BCDD6AF
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 08:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3302A3017F18
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9E42F0C48;
	Thu, 25 Dec 2025 07:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="XGpAerPg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-06.mail-europe.com (mail-06.mail-europe.com [85.9.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782F7260592
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 07:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.9.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766647582; cv=none; b=qHXOjC2SAGicLcXIUDIOrvQj6NRmSmaFOWTSgoEWHIlQI7OzjSYfvScfa0Ye4WKRkY09zLMyH3kR8clvR2KnGcxLObmFNaJ8KLBUfW0OpyrAyDj5UAwKgXWgCXsKpM1BtblpmL3qymqyD+X8f8bkLGEzRdIJUAJOF1CfDslfsaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766647582; c=relaxed/simple;
	bh=YBx4AW4ipiusTnsvBlvsqPxeyoq/V//yo6SHofBmaMU=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=dK403e7dtqi3rgLt9c6MUh9NpofuSi+STHr7WoGsGT3vI0Rum1HoDB0T6n1d8AWIG3TW4Ub+xGFOIECbLVlMmWyPNZ3b9j8OORo8mTiOBD1C1LIh/srO+ElFSx/tJBk3WXv+5h1Iq/sW5ciwtp/VON4t2Filx/HkTHviF+26Csc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=XGpAerPg; arc=none smtp.client-ip=85.9.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766647565; x=1766906765;
	bh=f0+oq+YB3cRYec6ceqa/5IjTpCOuCi49Dnfb2d/uQe8=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=XGpAerPgyus8JyXZaMDjeMS4336qP6d9VH2OojAKK5jn32YBbZCubd5+nxdLSo1zs
	 PnkcJlojcT+C7FZEJGcbAW+USxpOIItpodAkpsWQNgb4sAd/wbxj+S30GU7GWQ9ZWw
	 t7fuW56zTmI57hSivnGUM7Be4VrwYwR0r/2KVm2MWJsBLo4F7GmvyaK2F8hGbpfMsX
	 4OsfCT751goOnvo+35J+DrhI7JM4M+jeV7AKUnDkFjXA/ggAi5I/wXIrDk3tmWqGhe
	 uja4pvBO+r/+5I+7q6fViuwYfMYpEjReeZWgAXJEh9PKzNLCq+aqaubrYomMLusck/
	 9UJZJNMSMW3Cg==
Date: Thu, 25 Dec 2025 07:26:02 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 0/1] man/man2/semop.2: Fix VERSIONS and HISTORY mix-up
Message-ID: <cover.1766641592.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: ae6a556667f9add5c2c622d812d82346d29bb4b9
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------f4a645ab2b736b4254bf79e97b9976ddbc784ab7620480ef9f1283c66eccc333"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f4a645ab2b736b4254bf79e97b9976ddbc784ab7620480ef9f1283c66eccc333
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 0/1] man/man2/semop.2: Fix VERSIONS and HISTORY mix-up
Date: Thu, 25 Dec 2025 17:24:49 +1000
Message-ID: <cover.1766641592.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

Hi all,

The man page for semop(2) and semtimedop(2) has a VERSIONS section, but
not a HISTORY section.  However, the VERSIONS section describes what
should instead be in a HISTORY section, and doesn't distinguish between
the two functions' different history/versions.

The reason for this seems to be a commit which removed text attributing
the listed standards and versions to the corresponding function.  I've
patched the page to make clear which function has what history.

Do note that this my first attempt at using a git & email workflow.  So
while I've attempted to follow the contribution guidelines, there may
still be some errors I've missed, and which I'd be happy to correct.

Seth McDonald (1):
  man/man2/semop.2: Rebrand VERSIONS as HISTORY

 man/man2/semop.2 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

Range-diff against v0:
-:  --------- > 1:  86b4c2ec9 man/man2/semop.2: Rebrand VERSIONS as HISTORY
-- 
2.47.3


--------f4a645ab2b736b4254bf79e97b9976ddbc784ab7620480ef9f1283c66eccc333
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlM5wkJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmehE0aStv5/zMR0zY3k2nqFFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAEQdAQDMCeWoE3/pXl9H6lTbQGZp1+EL6fkyoAeKbgJN
W+cQsgEAsdfvXfQRnId+GZn2K2GxQecGMyJNtz1MdyF3H32W+gk=
=xLkD
-----END PGP SIGNATURE-----


--------f4a645ab2b736b4254bf79e97b9976ddbc784ab7620480ef9f1283c66eccc333--


