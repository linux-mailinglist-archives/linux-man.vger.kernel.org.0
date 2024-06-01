Return-Path: <linux-man+bounces-1026-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D54788D7177
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 20:20:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81CC11F219E6
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 18:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FA127447;
	Sat,  1 Jun 2024 18:20:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com [216.40.44.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3691171D
	for <linux-man@vger.kernel.org>; Sat,  1 Jun 2024 18:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717266022; cv=none; b=G78YCP/1b0rtYVmc8aFnTJAouhI5Vx0YEPZlJJS883ABtjA1YbIsWlBYtF1hJY9gc9PCNLS9nt8EKB5Jzz3UxOd7eUi0YLKDy8lp9y2yOuTjGFU8lThnyq42iJ+zaEHANB3YJIFHvIPEG/rZ8iNxP54LyYPG+Nz5vxcg5/6S99g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717266022; c=relaxed/simple;
	bh=lE5HLm+sFWxp+0yGq4a8AblBBUxNIyDAHO8L+Noxo/o=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=QEeaHc4kG1MAJyRQwrqI7ph3cZCwXlwWJGDYR8LhVmWe8ANJXrAbfkEV2fD+U41HGM+AlDylAEAkuvTFDq/GW6Kp2FUTQSUjbuWMdz1My4XlQkbw2fl0VRo1Ms4bX4TyWSgv10PywOMKNzRXVSJy+LM23yhYFESp5+aANhmnRjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca; spf=pass smtp.mailfrom=SystematicSW.ab.ca; arc=none smtp.client-ip=216.40.44.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=SystematicSW.ab.ca
Received: from omf17.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id ADCEDC09B9;
	Sat,  1 Jun 2024 15:15:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf17.hostedemail.com (Postfix) with ESMTPA id CA2F11A;
	Sat,  1 Jun 2024 15:15:24 +0000 (UTC)
Message-ID: <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>
Date: Sat, 1 Jun 2024 09:15:23 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: linux-man@vger.kernel.org
Subject: Re: POSIX conformance document
Content-Language: en-CA
To: Linux Man-Pages <linux-man@vger.kernel.org>
References: <12722244.etNSJPHsjv@nimes>
From: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
Organization: Systematic Software
Cc: Bruno Haible <bruno@clisp.org>, Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <12722244.etNSJPHsjv@nimes>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Stat-Signature: 1rfzxrby9h9oqausp4a59y4pygkhzw81
X-Rspamd-Server: rspamout08
X-Rspamd-Queue-Id: CA2F11A
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX1/WRPH5ltaZCC9yaaGljgKMthcTnHPzjiU=
X-HE-Tag: 1717254924-788712
X-HE-Meta: U2FsdGVkX19k/eU5J766fkznWdKNDV0sBLfNGdViKHMwwmW7UFkkhB0yCMtzSPN9lsyE06w3kCbltcAD3vIKqBML2mcuh0iSu2fMstmWxdsrKIm2QaNs1NTV55lJkRESRAKZH/6b3gj8gkn44r68pxzMxW0oCESBV1DsPAdYDWaeQ24gyAhsCufYEqScDJ+E0fSun4ZdkbtugMEtjDHI6RYkBasmSwaeyv75G1jtMnXgnQ12agRj+3hEhGcOcxDTRUlAO5pmmb1iPjZw5WlPkZlIDVhm0FRhyAf5dbEfQRqq4Dqbc3GJB+f/cRAkxsKl6DKzJtjAx5ObUtxSleYZz5L1zE01LF/DRelRAhGgebvW7Q82Ow+dhH3XPE5Psv66r7BqFSiC1KPFJWY47MoD/yUjTpI17hfxyBaxY7XOToAyPwLCzYgNvU5dGlmbjp7V/nwstVOtwIhQ9D2Q3iEYXSbSLTQPw358s5tEpuk3oJm9OCtOHjfEqzY8qJ0TxS7RCwMd0Aum6HOHhXPoj8OKfa8LmJEYQvL3TR3UDemNr9p17XhuE/EKPeohuarPi/dlMr9cb4DK5JaekT2pVU4oaP+uCX1qDQz9TtoFPnLUW6xOgBiA7Lcyge+p3ZS40MZa+fiy6iipGZ0mfXozgQJE/8cd4p4N9mEa7PSYhQjmxYY=

On 2024-05-31 15:21, Bruno Haible wrote:
> POSIX [1] specifies that conforming implementations shall come with a
> "conformance document" that describes "implementation-defined" characteristics
> [2]. Two such example conformance documents are [3], [4].
> 
> For Linux (or any Linux distro), I cannot find such a document on the web.
> 
> Is such a document only considered useful for business/marketing purposes?
> Isn't there some value in it also for regular users and developers?
> 
> Will there be some effort to create such a document for the upcoming
> POSIX.1-2024 standard, for Linux and the GNU libraries and tools?
> 
> I'm asking because I've collected the answers for all *gettext() functions
> and the msgfmt and xgettext programs (that will be part of this new POSIX),
> but I don't know where to best document them. Likely in the manual of
> GNU libc and GNU gettext, right?
> 
>           Bruno
> 
> [1] https://en.wikipedia.org/wiki/POSIX
> [2] https://pubs.opengroup.org/onlinepubs/9699919799.2018edition/basedefs/V1_chap02.html
> [3] https://empyreal96.github.io/nt-info-depot/SourceLevel/base/subsys/posix/pcd.doc
> [4] https://www.qnx.com/developers/docs/6.5.0SP1.update/com.qnx.doc.neutrino_prog/posix_conformance.html

Hi Bruno,

You might want to sign up to the Open Group to access the Austin Group (POSIX) 
documents (including latest drafts to update your info and documents), become a 
member, email your questions, and participate as a documentor and implementor on 
their list:

	https://www.opengroup.org/austin/

You can also view their discussions and document defect issues on web archive:

	https://www.mail-archive.com/austin-group-l@opengroup.org/

and get updates from an Atom/RSS Feed (e.g. Firefox/Chrome/... bookmark feeds):

	https://www.mail-archive.com/austin-group-l@opengroup.org/maillist.xml

without subscribing to their ML.

[Alex has contacted them about POSIX man pages, and hopefully may get info about 
updating POSIX man pages to 2024: latest draft standard has been approved by 
IEEE and Open Group Board, internal publication of the standard with final front 
matter is due 2024-06-14, ISO/IEC ballot closes 2024-06-28.]

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

