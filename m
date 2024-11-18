Return-Path: <linux-man+bounces-2040-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F659D0B44
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 09:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56F6F2825CA
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 08:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F3A183CA6;
	Mon, 18 Nov 2024 08:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="oucX8Cd0"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF291547E8
	for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 08:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731920138; cv=none; b=rX4mYcQjmKe7HaLQZEMb7WRN3ZB25barxY0OArBk9X54oJXPL4dlS9Q2sranaHNQYYSG1vlY651BPCN2QSZmxbcgpX0NBLWO08O3NCUf3r9QYUF3ux99bMsblSbFRjyGko5qpPZgR7jWMEIve7tQm5mhKj9hu5qkKNDs8kNWmjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731920138; c=relaxed/simple;
	bh=C374er2EAv9PPE3oADIz2YaCL8jNHVlTzScSOUVvhJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ar7bfb3qbnKCeSCQd5FAvvOSp6L6T6RMkO6kJo6s1fjFLan0i+PIe716YsihrhfeBweAphzf81X3Kus091/d40meHbcrjre3XHvtz4h3/g7iKzoaHY/vJU6CAvTCJYf+J7BEm+OAMRgQeh5dzZelGan3+wBzJoZfoXouFiWui2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=oucX8Cd0; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=ltQRKH7rdj7Ujwt3hJraN6n7J8hSniCNQ3D6QxZSC54=; b=oucX8Cd08D7XWu1dIrJw1/kIYv
	tFYu6f/bF+h/EIEianhe/1D47xC8Ho5qo5kaGlRWbwIaJYRQ/7Tv3SZkLjXWJSjeVLkoQu+Daj+co
	o83insS8XcoOkcuJf7DY2jk8P8guMSGIbi820jlnygkyWHmwUKW1bUC8S97462ZyJ/SfIAVxbnUOz
	2gtH3NDC/+RqzEbM5wdkbQMz3wY2iGGp01XeCjNJrZKPeKMs2bxIP6yUqb/k6zdVFJ1zidAF10iUO
	BmHUtdvT0oDpZ8SfI8rTw9iXZ+N92rpNI3P9CNUTxR7Wr4zc8+1GdNgB8Y+RagQZsOlvRVKza7dmE
	HTZU/5wg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <toddy@debian.org>)
	id 1tCxMz-006DbC-2j; Mon, 18 Nov 2024 08:44:29 +0000
Message-ID: <6efad175-e14b-43b6-a689-c77a1a08f334@debian.org>
Date: Mon, 18 Nov 2024 09:44:27 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page tzfile.5
To: Alejandro Colomar <alx@kernel.org>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
 <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>
 <qwrwdtsyzhgsakvx67clqvvnllswvvln6o4igsyrlwyt25sauv@p4qbpnwmibwy>
Content-Language: en-US, de-DE
From: "Dr. Tobias Quathamer" <toddy@debian.org>
In-Reply-To: <qwrwdtsyzhgsakvx67clqvvnllswvvln6o4igsyrlwyt25sauv@p4qbpnwmibwy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Debian-User: toddy

Am 17.11.24 um 15:56 schrieb Alejandro Colomar:
>> You're right, but this is a Debian patch.  I've CCed Tobias.
>> I suggest transforming
>>
>> 	+It seems that timezone uses
>>
>> into
>>
>> 	+It seems that
>> 	+.BR timezone (1)
> 
> d'oh!  s/1/3/

Fixed, thanks!

Regards,
Tobias


