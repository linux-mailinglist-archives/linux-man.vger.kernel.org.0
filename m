Return-Path: <linux-man+bounces-483-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB77869EFD
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 19:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF3029122C
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 18:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979EE1474A9;
	Tue, 27 Feb 2024 18:20:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cilium.nesselzelle.de (cilium.nesselzelle.de [138.201.35.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E865114831E
	for <linux-man@vger.kernel.org>; Tue, 27 Feb 2024 18:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=138.201.35.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709058047; cv=none; b=ASM7AmlUkF9V9nJikOOH5nQBvzRxCMM5+hvzR2WBkRunYy5WHz8dTWl7/xuAexPQ6o4uY+2osj3YlU8aLeJN2HsrpB1/poaL+hyZk0thmDVg+HRtrikUXzNo+AIwh5rswhPpH2sA/g5no2yxGf0sOq9LldMM77FQBgHdVxmZljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709058047; c=relaxed/simple;
	bh=DEGRxzPtV7yjCOx7eDX1asKgGIYd6s2b7WRrzCSYGGo=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=j567QmzdypZ9AN/EUVteXxeK21xunIvDxQ6nAJYGvpc2rKovJ45WUXgtSKkP9XGY2hRR5f0E1woQNUaKhJhjJSWZwxQIeUv1piRyfWDh0hJjXVPufeKnuV7Zd6xZb5j7148r5JmmVZIJa9gWbPNS3Cw8W+kWRXpj5yEPgiGkd84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org; spf=pass smtp.mailfrom=orgis.org; arc=none smtp.client-ip=138.201.35.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=orgis.org
X-Bogosity: Ham, spamicity=0.004689
Received: from localhost (zentriol.nesselzelle.de [144.76.80.99])
	by cilium.nesselzelle.de (Postfix) with ESMTPSA id 7FCBA4007E;
	Tue, 27 Feb 2024 18:12:17 +0000 (UTC)
Date: Tue, 27 Feb 2024 19:12:16 +0100
From: Thomas Orgis <thomas@orgis.org>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
CC: Eric Blake <eblake@redhat.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_1/2=5D_sigaction=2E2=3A_HISTORY=3A_S?= =?US-ASCII?Q?A=5FNOCLDSTOP_wasn=27t_added_in_POSIX=2E1-2001?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20240225115307.438556-2-alx@kernel.org>
References: <20240214095707.1824c25c@plasteblaster> <20240225115307.438556-1-alx@kernel.org> <20240225115307.438556-2-alx@kernel.org>
Message-ID: <5BA9FE20-851A-4074-8BA3-15F2A5BD3C0F@orgis.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

apart from=20

Am 25=2E Februar 2024 12:53:15 MEZ schrieb Alejandro Colomar <alx@kernel=
=2Eorg>:
>It already existed in POSIX=2E1-1996, according to just a few lines above=
=2E

=2E=2E=2E it existing in 1990, not 1996? Or is=20

>@@ -1020,7 +1020,6 @@ =2ESH HISTORY
> POSIX=2E1-1990 specified only

a typo? I am by no means an expert on POSIX revisions=2E
More interesting in this context seems to be the subtle change
in SA_NOCLDSTOP behaviour with XSI enabled noted in the spec

  https://pubs=2Eopengroup=2Eorg/onlinepubs/9699919799/functions/sigaction=
=2Ehtml

  SA_NOCLDSTOP[CX]  Do not generate SIGCHLD when children
  stop [XSI] or stopped children continue=2E=20

Should this detail be documented, too, for this flag? Get SIGCHLD only
if continuing, not when stopping unless with XSI?


Alrighty then,

Thomas
--=20
sent from mobile device, trustworthy or not

