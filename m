Return-Path: <linux-man+bounces-2416-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 605AAA33124
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1D4D188B722
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70919202C4A;
	Wed, 12 Feb 2025 20:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNsMoTo0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8F9202C3A;
	Wed, 12 Feb 2025 20:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739393910; cv=none; b=cuY/nv9rmWfeqjUJOKJl8X79DD4OoURgvRX1DaXFRWTxXI78zDjy7A0niZuqeuuI0RgjWHzGUuh48lI6Zo/rCoEQP5kMijLSbRryLhKn2djf6zmNJWoYPqzxjsP4OYDKvJ2cfVwvsFYf3jZXsxpWIMVmUe+Cdb3ce55kKy/xfUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739393910; c=relaxed/simple;
	bh=lGuZTURnocyqzlCsBc0qRo7e7wpIAl09SxCgBnfjR5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CobHZVhE9XbPGnybcMdAF2+FApUc/1snh/RVJR5zYCh+o5qNcjBx/qK67AVSXr4AzWnR6p6/lBaIgBOhL1XRgIElNveFJIAt2s9LlMHRsuVHjhDIOYPl7HyZjHsKmLJofs2owOP/9fJzeF48g6h0y4F5Bb5sK2XlgYkyRKljt64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNsMoTo0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5187FC4CEDF;
	Wed, 12 Feb 2025 20:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739393909;
	bh=lGuZTURnocyqzlCsBc0qRo7e7wpIAl09SxCgBnfjR5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LNsMoTo0pV3yRcqaQjmOywu8dBYL3qwHsJGOunv8GZIykN15CPIlMFiQAEc0RbgL1
	 8INPEtX44kSJtuP7V0edzDgoQF6frKRDRutXW5FJwN4E4PpXSyfff4naMHgcF0fxIr
	 JZGEf7HI1zgGgq7WUT7NdyKUP37VezUpppBNs04hF/ouh9W57qRg9Qdrqths7bMI1U
	 v7oDq/1DX1BDbCESO7kZyRlt1gF/OsZX2Obsxf/a1S/F5G9/vGxX+K9R7Ykf8AaVOo
	 nnnU0qRGzoUtywDitFGHtTGKjd0QZXZlHaUmLxz6X2eq4jQi3IpBUV/nSqczblLQ5N
	 CzYKXsJpTvgIQ==
Date: Wed, 12 Feb 2025 21:58:23 +0100
From: Danilo Krummrich <dakr@kernel.org>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Gary Guo <gary@garyguo.net>, Miguel Ojeda <ojeda@kernel.org>,
	DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <Z60Lb4OK3jLCAAra@pollux>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux>
 <20250212163848.22e8dcff@eugeo>
 <Z6zT6mZuxonewQ9z@pollux>
 <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com>
 <Z6z-FlEUk9OfeJCV@cassiopeiae>
 <CAJ-ks9=-ZQpmhJRs3YstZBGb9UvLwRQJ7od+dsc_sYZtwUhF2A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ-ks9=-ZQpmhJRs3YstZBGb9UvLwRQJ7od+dsc_sYZtwUhF2A@mail.gmail.com>

On Wed, Feb 12, 2025 at 03:47:11PM -0500, Tamir Duberstein wrote:
> Looks like I wasn't the only one to fall into the trap (rust/kernel/io.rs):
> 
>     #[inline]
>     const fn io_addr_assert<U>(&self, offset: usize) -> usize {
>         build_assert!(Self::offset_valid::<U>(offset, SIZE));
> 
>         self.addr() + offset
>     }
> 
> since offset isn't known at compile time, this can easily be misused?

Well, that's intentional.

iomem.readb(0x0)     // succeeds if SIZE >=1
iomem.readb(foo)     // fails if foo is not known at compile time
iomem.try_readb(foo) // succeeds if self.maxsize() >= 1

