Return-Path: <linux-man+bounces-2801-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 79032A97A63
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 00:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0283D7A6BF5
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 22:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18F72C258A;
	Tue, 22 Apr 2025 22:22:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232792C10A4
	for <linux-man@vger.kernel.org>; Tue, 22 Apr 2025 22:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360560; cv=none; b=Cp/9pIXqMqt6Vszr+evBq4nir0FD82mJuvAhCZyrDvv8EJiYd0FdePm29C35B+u+TIaMXJ2R9V3xxG4+XTsaxDX13xUUKClffWtJ24yZ+RYVt+goBezwr0kz+PsGmmciSI7oZAloMANyUu9GC7+LPK1/GcBVN2FIQI2dPZDA61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360560; c=relaxed/simple;
	bh=8+W3ZgMU+QoYs4p0b2TU3n98HQ9zhovyAb7htKt2BxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tB07TKdEc4PjsLCjcuqiBSPRIHXld9aXENTkA5gUX8wQmwEr6uj69cZe/V+9rlziN3eEJfFlJC6zD8EqQIC2e9f90umPH/feCADa+5+Nb1PVWEm8x52J7Hqf9i3LYkcBNZf/V8qQudgJeslhOZdw7xSnIPScr4sYnrh0b7+WFQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Received: from macsyma.thunk.org ([204.26.30.8])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 53MMMFeS008792
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Apr 2025 18:22:16 -0400
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 28C693463B2; Tue, 22 Apr 2025 17:21:31 -0500 (CDT)
Date: Tue, 22 Apr 2025 17:21:31 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-api@vger.kernel.org,
        linux-man@vger.kernel.org
Subject: Re: newlines in filenames; POSIX.1-2024
Message-ID: <20250422222131.GE569616@mit.edu>
References: <iezzxq25mqdcapusb32euu3fgvz7djtrn5n66emb72jb3bqltx@lr2545vnc55k>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <iezzxq25mqdcapusb32euu3fgvz7djtrn5n66emb72jb3bqltx@lr2545vnc55k>

On Wed, Apr 16, 2025 at 06:50:00PM +0200, Alejandro Colomar wrote:
> 
> I'm updating the manual pages for POSIX.1-2024.  One of the changes
> in this revision is that POSIX now encourages implementations to
> disallow using new-line characters in file names.
> 
> Historically, Linux (and maybe all existing POSIX systems?) has
> allowed new-line characters in file names.

Do we have any information of which implementations (if any) might
decide to disallow new-line characters?

If the Austin Group is going to add these sorts of "encouragements"
without engaging with us dirctly, it seems to be much like King Canute
commanding that the tide not come in....

Personally, I'm not convinced a newline is any different from any
number of weird-sh*t characters, such as zero-width space Unicode
characters, ASCII ETX or EOF characters, etc.

I suppose we could add a new mount option which disallows the
weird-sh*t characters, but I bet it will break some userspace
programs, and it also begs the question of *which* weird-sh*t
characters should be disallowed by the kernel.

> I guess there's no intention to change that behavior.  But I should
> ask.  I thought of adding this paragraph to all pages that create
> file names:
> 
> 	+.SH CAVEATS
> 	+POSIX.1-2024 encourages implementations to
> 	+disallow creation of filenames containing new-line characters.
> 	+Linux doesn't follow this,
> 	+and allows using new-line characters.
> 
> Are there any comments?

I think this is giving the Austin Group way more attention/respect
than they deserve, especially when it's an optional "encourage", but
whatever...

						- Ted

