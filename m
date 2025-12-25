Return-Path: <linux-man+bounces-4558-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DB2CDE0CF
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47BBD3004415
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 19:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7F72264B8;
	Thu, 25 Dec 2025 19:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="OAVsTSha"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700F43A1E6D
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 19:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766689611; cv=none; b=H2NeBcCntbAQecy3WDbmyjfb6Z1fFtZPVAFa2LSAewQPSiWdlSocrtB8P7nhqvCSV87Cq+3Zk3SQOWZwkigolB7osMWhIlSS5yEUf3KjXmtLFZiJqzNoKV6VXltOFoszaTr9wLNV5ZW5eAsucGv4vHDXdw+gSWQgzT7QCNwHXmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766689611; c=relaxed/simple;
	bh=yP/OYoQzTVELO5jAUpnwTenlcTD25r0ED5pKuCR+2wA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ic8SwGuu7UBPfjDZ4SJGHECiv1hsr3jfSDosVYPe8HXVeKVjqsD42wyPYpopQ6V0IfnUW40qNGiJ8xTtbu8WOklOVsDurJYfxcsV2o2nNzX6iHvedNz+9cPHYORR3gzy2nKG/+D31Rdm1bjPQ0yT98Ij0O07dqW8AJU6stZ1HN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=OAVsTSha; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=zTMMWNcDwQaUSOVjhWmCqYCyCv9WSsshJEmDfRLSxuQ=; b=OAVsTShaO67lXPVfRQQ8O0brXp
	6XvUAAc5G4R0+TSOzj5lgCriX5KX0HKaNedcCXoA9mZ9eoMRA8yFVfcL5vT1bOcytkg3xr/gJi0ng
	LkK0VGHrnrECwSkCPH9OrUXb8falRVvjE6WPsR+OZweSJg7PRekTk4QUTz+mvINu2S3tO9PePQLQE
	Rpuicj/QveMFRmYsiPzM989CZGUbHWt7cB2CeNXqF3jYqD80abaYdp6e0WvrBr22y4H3S6zW4ZkXE
	qPaoWgZ+fI284jozGonpu0hwomvWQE8Hy/IeQkoTRtlhRnoWH27VZa4HMTKjgCiFKOzJSfV4bclnD
	fLa70c7Q==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <rra@debian.org>)
	id 1vYqfX-008FbJ-CB; Thu, 25 Dec 2025 19:06:40 +0000
Received: by mithrandir.eyrie.org (Postfix, from userid 1000)
	id 3AC564B3805; Thu, 25 Dec 2025 11:06:34 -0800 (PST)
From: Russ Allbery <rra@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: debian-policy@lists.debian.org,  "Dr. Tobias Quathamer"
 <toddy@debian.org>,  linux-man@vger.kernel.org,  Helge Kreutzmann
 <debian@helgefjell.de>,  "G. Branden Robinson" <branden@debian.org>,
  Colin Watson <cjwatson@debian.org>
Subject: Re: Stop compressing manual pages
In-Reply-To: <aU1D0aL00gy1V-NX@devuan> (Alejandro Colomar's message of "Thu,
	25 Dec 2025 15:15:03 +0100")
Organization: The Eyrie
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
	<aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
	<aU0WjfHED1esOwPy@devuan>
	<fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
	<aU1D0aL00gy1V-NX@devuan>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Thu, 25 Dec 2025 11:06:34 -0800
Message-ID: <87ms364c05.fsf@hope.eyrie.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Debian-User: rra

Alejandro Colomar <alx@kernel.org> writes:
> On Thu, Dec 25, 2025 at 02:47:33PM +0100, Dr. Tobias Quathamer wrote:
>> Am 25.12.25 um 12:20 schrieb Alejandro Colomar:

>>> Indeed, compressed manual pages are a pain to work with.  You can't use
>>> regular Unix tools to work with them.  With uncompressed manual pages,
>>> You can go to /usr/share/man, and run a pipe of programs to do a complex
>>> search.  With tools like zgrep(1) and zcat(1), you can do some stuff,
>>> but not everything.

[...]

>> thanks for your bug report and the provided statistics. I haven't thought
>> about this up until now, because it violates Debian Policy. Quoting from
>> Section 12.1
>> (https://www.debian.org/doc/debian-policy/ch-docs.html#manual-pages):
>> 
>> "Manual pages should be installed compressed using gzip -9."

[...]

> Yup, I'd like that policy to change.  I've added debian-policy@ to this
> mail (and also linux-man@).

Colin, do you have an opinion on this as the man-db maintainer? The
software you maintain is probably the primary consumer by a significant
margin of the installed manual pages.

The rationale in Debian for compressing documentation in general is for
embedded systems and other small installations, and it applies to just
about anything that can be safely compressed (manual pages are only one
example). But this rule also predates such facilities as the nodoc build
profile, and is several decades old and thus predates the growth in
storage size even in small embedded environments that has significantly
outpaced the size of text-adjacent documents. I would definitely want to
get feedback from embedded folks before changing this rule, but at least
at first glance it sounds like a reasonable request worth considering.

-- 
Russ Allbery (rra@debian.org)              <https://www.eyrie.org/~eagle/>

