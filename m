Return-Path: <linux-man+bounces-2397-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857DA3184B
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 22:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAF48188620F
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 21:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB3B267AF2;
	Tue, 11 Feb 2025 21:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bToM2+q9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64443267715;
	Tue, 11 Feb 2025 21:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739310844; cv=none; b=ETdncSfpS0dpZpdKumBle8OEsyU/iOw2VZLjW2f/7pBEKfp7AH+x5gSuXwRgEe25gAJ3/3zfKi2iYZ6/czSVgkwi+PblhSoJGx4BYFYug+oFzgyV8ka2oils/+s8g2tIvcbauDDHebVttKZhaUa3+GHqSu2G95Eq/JciIHyQ9BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739310844; c=relaxed/simple;
	bh=RNFOzoQUuJKfPOmuFZDHMkCVRWlexxP18YGESZaBvME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s+dPv+bdkvcJSeP0Kg8MIYNIUaUnO0D31r3YZOETujf+zscNIkDyQg1ZlVL9Zj1mvCxr/IaqPeeZsbRoxz72x07OHxOYvEdxAlnuUfRJaZgloUzi5l0CB7XeBs6v/DVIhTmviM5Esf9srwZWkm2d7yMkl6vvNae0/6psn7YQZF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bToM2+q9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A084C4CEDD;
	Tue, 11 Feb 2025 21:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739310843;
	bh=RNFOzoQUuJKfPOmuFZDHMkCVRWlexxP18YGESZaBvME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bToM2+q9C5HOwTUUkWUCHoQ39ubJGFJQ5KPvpCLHVMX1/dTKI8uPeqFHtzSPzseNg
	 B6ZPB6jyRLLrqLGIqlfX/mt0othgQUJFzcSEcbaOn23zampaiH1DsmF8CCqjkWnUT5
	 svoPIY7EmYCNY0rnnIfRv0TefOCN9desWJw61DtMTM45W6Xi/Ms4onofEh+FwmtsVi
	 /n/9Ygr2r1uhshJFgicORu5kOgpC52+NBsLYxDB+nMgzXhZTYusm4OHQkcm833MQAe
	 Fhu4GlwMhdDBCE/m1Qo1Hlge+B2ceq8v72mfxKXEr+hOEWK1pWKeCXOTVe+jj+k5C1
	 ntCV8R5QDs2dw==
Date: Tue, 11 Feb 2025 22:53:57 +0100
From: Danilo Krummrich <dakr@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>,
	Will Newton <will.newton@linaro.org>,
	Paul Eggert <eggert@cs.ucla.edu>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <Z6vG9QlPbwfpxwdJ@pollux>
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
 <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com>
 <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com>
 <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com>

On Tue, Feb 11, 2025 at 10:46:14PM +0100, Miguel Ojeda wrote:
> On Tue, Feb 11, 2025 at 4:21 PM Tamir Duberstein <tamird@gmail.com> wrote:
> >
> > Drat, will do.
> 
> Thanks!
> 
> > Yep, I mentioned it under "Changes in v4".
> 
> I meant to confirm the reasoning -- it is all good, thanks!
> (personally I would probably have dropped it in a case like this,
> since the change in comments is substantial and Danilo was waiting for
> the clarification from Alejandro etc.).

Agree with Miguel, better to drop it in such cases.

But no worries, Tamir. It was still valid in this case, which is why I did not
complain. :)

Also feel free to keep it for v5, moving to Gary's simplification.

- Danilo

