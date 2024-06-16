Return-Path: <linux-man+bounces-1213-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D84C90A0D6
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 01:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16F7328230A
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 23:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77536E613;
	Sun, 16 Jun 2024 23:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b="KQiHDfxP"
X-Original-To: linux-man@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C27211CB8
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 23:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718581097; cv=none; b=Jr8WQL1dfbGQRGSjoXHvtAuPSDfHEF0MiyBWCOLfA2QIEr2KJ1xHlTBy3m/CPtxwCV8MteyAykjEmAcKBRm/Rz8qjDzoU//LnFEuk8k/eDgVPx+vIDjtaS2K3c/CowJ6XLmnhyrVkfZyru4vhZMTDR2ZvYtP8CFBcmKA85AhuOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718581097; c=relaxed/simple;
	bh=cd8a4cyYlj7NfGTs89eWlX6auVC4btQ7AryXpY8h17I=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iKenOYV4z6nVcKuyfz528WTcHpiqmc6COkndHQ1Ai13KS8usw/i72Q4nr43PLcCQ8ntVeVp1iGOUxnYXua46I7fOzrWo52KazeCTuTtmiEQXbgJSv/lx7E5SrcWv3oNrf5A2RearkOtuSLE8pCUMCnH2oggsGbyYYIh9CaqfUyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz; spf=pass smtp.mailfrom=baxters.nz; dkim=pass (2048-bit key) header.d=baxters.nz header.i=@baxters.nz header.b=KQiHDfxP; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=baxters.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baxters.nz
X-Envelope-To: linux-man@vger.kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=baxters.nz; s=key1;
	t=1718581093;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8Fbi22j5quooepVADKDLvQNixDhsxiJLrfHsUjjYoeA=;
	b=KQiHDfxP9Ro8d9HLhXEI4iHPAaILDTLkAFpFtt3HDbc4W2e8eas6IIPMaMG8NRGI+yVZGE
	vT4sXbEk74KQAaCqDbVr8w1C1DIpCzu9wCJsbFnl6GuXMTry759nQ5eeGa+pLViuoRipXX
	mMSm8B2wFC4kKFn/QQUCj9LjyuZHo00uYklIPdtOS0f6C46Tiw0S06Khlx+oKb6SGghzYw
	nMJm6/jZKQ1czZZq/Ax5HouQInpixT5rJT7U9n9UvpbV7YxH9pjKreF5soG4gOp0y4XO5A
	00ZAzliUH3Jxe26riney3HcxYjty90zerI993sOBeLif1V6ljeYSAcb1xGDahw==
X-Envelope-To: alx@kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jeremy Baxter <jeremy@baxters.nz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] intro.1: Improve wording in initial introduction
In-Reply-To: <h2n62rzdo3sska6dcjxpgkootmafjyq22nu75dw7js5ycjc7oc@wogudmcmgmg4>
	(Alejandro Colomar's message of "Mon, 17 Jun 2024 01:05:45 +0200")
References: <20240616223429.46202-1-jeremy@baxters.nz>
	<h2n62rzdo3sska6dcjxpgkootmafjyq22nu75dw7js5ycjc7oc@wogudmcmgmg4>
Date: Mon, 17 Jun 2024 11:38:06 +1200
Message-ID: <87a5jk31cx.fsf@baxters.nz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Migadu-Flow: FLOW_OUT

Alejandro Colomar <alx@kernel.org> writes:
>> -Linux is a flavor of UNIX, and as a first approximation
>> -all user commands under UNIX work precisely the same under
>> -Linux (and FreeBSD and lots of other UNIX-like systems).
>> +Linux is a flavor of UNIX, and user commands under UNIX
>> +work similarly under Linux (and lots of other UNIX-like systems too,
>> +like FreeBSD).
>
> I like the changes in this paragraph, except for the removal of "as a
> first approximation".  Not a big deal, though.

I don't hear "as a first approximation" spoken often and it just brings
more cognitive overhead to the content in my opinion.

>> -It is not built-in, but is just a program
>> -and you can change your shell.
>> -Everybody has their own favorite one.
>> +It is not built-in,
>> +but is just another program.
>
> I would maybe use a ';'?
>
> 	It is not built-in;
> 	it is just another program.

That's better, I'll use that in v2.

> I think I'll apply this patch.  Let me meditate it to-night.  I CCed
> Doug, in case he has any comments (it would be great to hear his
> feedback).
>
> Have a lovely night!
> Alex

Sweet, thanks for the review.

