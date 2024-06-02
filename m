Return-Path: <linux-man+bounces-1028-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E888D75C2
	for <lists+linux-man@lfdr.de>; Sun,  2 Jun 2024 15:40:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94F0BB213BD
	for <lists+linux-man@lfdr.de>; Sun,  2 Jun 2024 13:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AAED3B7AC;
	Sun,  2 Jun 2024 13:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="o+7s86TB";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="IURZNcSA"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0504839FD4
	for <linux-man@vger.kernel.org>; Sun,  2 Jun 2024 13:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717335615; cv=pass; b=eDURt4rAaXLOMjOSvGnlZ4DK7PF9tpHgO3a/brirUv5vSBpq78W0UFCaiUhUSdlsg6aL75XZ3WpLn19wLcglVfg9TWy8WMm+wEV3jwLDS+VI1rT/DaqFpvbT7YZZtnddqc5QjoKfdnJastWcLepxhmXl7q63fqy5lFrAyEflfOw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717335615; c=relaxed/simple;
	bh=kB6aHioASFX0k+BZ/obrlTX/skrRTtR4/Hgjvhb8thM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WZx/jQjdou9qsa/oxha2L0UuaXDw6mKkFrlHUr99VymOD/s+HnzN/3dXSazHubMVVva8b5BLfe23WhReBI2kPhxzqv+XpQkG500TTLdb5zMeG+Pi6O215IxtjPlFBMC59XsbMnlSqOmiP3tKZVOwh2BUOBu2nZBQuEG8kzRd+d4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=o+7s86TB; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=IURZNcSA; arc=pass smtp.client-ip=85.215.255.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1717335429; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=LP0/hHzocAfxXckkpiLikpyBH4dRIvyz+anDSUfGtz0K8c2Kb6Iu+h6dbeK9KUZjWX
    ytGBXYG63TfZ0AparxNw1Fp0r2Zh4Lawrfsl/3PDDDloiybHccAXya0cTtTozGoPZ70L
    ZABkVDTIWTxRa+LfdliEIU8t270aPiww/q+X2TnTXYAOpAT2EkKGqpWLa46zDrHK1WaK
    F1s5hKKzSzJ3eRhHdOuRGN9sF9KoTB16TqKcUo47VSMxnT+o124gMSkdMBLlEz/8W5HM
    3wpCj03J3Dkn1hYfYaaggUu35/EEDetPHnEX/NaI5r9J4MAbhUBih3lBtFtMgOlEQIh6
    FIOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1717335429;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=0A3MobV4h1eOtptnw4SVVGoO2KcZWwQYes+U1qRYOuo=;
    b=Jr0MgclwDOl5p3THRWZNAZfBCmMThv6Tn4Y+FtFtBbqwrl3TRncfzH+GMdVZ68MRBh
    iwsUoiR6ug5E05FgQRgNdrrLWjYSPJgMEiYtc1Hn8PSCA2HZoUAl73uOhgmLCQc3GTHH
    xNYP4U5NUmlK78p0K3aDitv4vLio5bWDzBDj3IQlmcPL0WnZc/fI4b/4d+HVTQ67sWRA
    V+uOfEBy6zqgEqH0DoMtj7EswbezvrQP/E4p5Hek+xjNpmFM52ihmgXWkHXsZv7VAxFM
    9AXdCU+q/jctaWR0qGtAkKDpbNxIBjZwOlcYkEj8VYQjteLd0XULKfYFON8DRqMSBt0X
    Od0g==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1717335429;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=0A3MobV4h1eOtptnw4SVVGoO2KcZWwQYes+U1qRYOuo=;
    b=o+7s86TBS2mvBquP4chkm7jha8Ki7QBmivd00h0/xeLVRtshDpYHhxXdyp5x5f6z6F
    pZ97iKnuzthkBoRxIvARi/yXoe3CQbUX66GKKT4/zJ0GAkR/R+v1jb1UFzqxpiS+Tfj5
    MdQ5KRGgrNjpkiqORdS6bJARDO2zL+ARjEKJWyoK0GkDFUQpjPWQVr2Z/GrSXyQbkEF0
    3u90gjSdd2xwh19lF/sQnf8uZjXjNyI+rNfVT4GUAWFKscbIP9NM4M/rnBUYaEb36kF2
    dI/VI390Cc2zt6aEXKnooDik5t3cB1cOYYMw6f7tHIStIc2b6KjtGlMGY5fkdGV3xtuk
    gJvQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1717335429;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:To:From:Cc:Date:From:
    Subject:Sender;
    bh=0A3MobV4h1eOtptnw4SVVGoO2KcZWwQYes+U1qRYOuo=;
    b=IURZNcSAyXeZZfDX98ifEDiddC1c6SvwwXbM2/24wVZCuPpnyuBiPLnt8yqWeRJHV1
    X5c8QVrmWQJZyVAjHCDg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPD1acihFmvqn7V2YisZYMQHV5gcw=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 50.5.0 AUTH)
    with ESMTPSA id Ndd2ca052Db9mJq
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 2 Jun 2024 15:37:09 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: Linux Man-Pages <linux-man@vger.kernel.org>, Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: POSIX conformance document
Date: Sun, 02 Jun 2024 15:37:09 +0200
Message-ID: <2557873.JmPAfv1VhO@nimes>
In-Reply-To: <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>
References: <12722244.etNSJPHsjv@nimes> <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Brian Inglis wrote:
> You might want to sign up to the Open Group to access the Austin Group (POSIX) 
> documents (including latest drafts to update your info and documents), become a 
> member, email your questions, and participate as a documentor and implementor on 
> their list:
> 
> 	https://www.opengroup.org/austin/
> 
> You can also view their discussions and document defect issues on web archive:
> 
> 	https://www.mail-archive.com/austin-group-l@opengroup.org/
> 
> and get updates from an Atom/RSS Feed (e.g. Firefox/Chrome/... bookmark feeds):
> 
> 	https://www.mail-archive.com/austin-group-l@opengroup.org/maillist.xml
> 
> without subscribing to their ML.

Thanks for the instructions. For simple defects, I occasionally do this.
For defects with a possibly complex treatment (due to different standards and/or
different incompatible vendors) I prefer to go through Eric Blake, who has
more experience in this area than I have.

Bruno




