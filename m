Return-Path: <linux-man+bounces-2449-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F6CA37441
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 13:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A2DF3AF48C
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 12:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2048D18DB2C;
	Sun, 16 Feb 2025 12:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=systematicsw.ab.ca header.i=@systematicsw.ab.ca header.b="bK3j3+pi"
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DA31519B4
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 12:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739710228; cv=none; b=D5tf2UP1R1m6d4qBTKxOY/pu2F9UraSxtnrjuaPIQ9Fm9xyiCiGr4rUD/VFx7iHXGdgoDyWc13uN0zWaxFZu8SsWXm+SBJzL8p6WP3DqFXmBOA8zfKzZYKKHTZkMylrQ+U5yCXT7qxDTgu263wnDfd2XjQag31esN3/PMfjQRR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739710228; c=relaxed/simple;
	bh=HMxZrjOEBeeXCVj5AkhTFb78HUP3c5Ln+eFEBdy4JsM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DWaMcgzmBySSuMMvT286iJ/tb3RDWEcnHCAanRDE7vh+g7LhF74c46yyahEzgFR2+iWHreTK4x6fz5OnbYn6pV6jPE9uECjKdAPQLU49Uu6eAqN/Pr1/bUxpt4VMMV4sZecC3Rhf/WUjGTuFOcgTq6jy85amTLAs7xITSb8hUSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=systematicsw.ab.ca; spf=pass smtp.mailfrom=systematicsw.ab.ca; dkim=pass (2048-bit key) header.d=systematicsw.ab.ca header.i=@systematicsw.ab.ca header.b=bK3j3+pi; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=systematicsw.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=systematicsw.ab.ca
Received: from omf19.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id EC8E614053B;
	Sun, 16 Feb 2025 12:50:19 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf19.hostedemail.com (Postfix) with ESMTPA id 578E720031;
	Sun, 16 Feb 2025 12:50:18 +0000 (UTC)
Message-ID: <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
Date: Sun, 16 Feb 2025 05:50:17 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: brian.inglis@systematicsw.ab.ca
Reply-To: Brian.Inglis@SystematicSW.ab.ca
Subject: Re: man-pages-6.11 released
Content-Language: en-CA
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
Autocrypt: addr=brian.inglis@systematicsw.ab.ca; keydata=
 xjMEXopx8xYJKwYBBAHaRw8BAQdAnCK0qv/xwUCCZQoA9BHRYpstERrspfT0NkUWQVuoePbN
 LkJyaWFuIEluZ2xpcyA8QnJpYW4uSW5nbGlzQFN5c3RlbWF0aWNTdy5hYi5jYT7ClgQTFggA
 PhYhBMM5/lbU970GBS2bZB62lxu92I8YBQJeinHzAhsDBQkJZgGABQsJCAcCBhUKCQgLAgQW
 AgMBAh4BAheAAAoJEB62lxu92I8Y0ioBAI8xrggNxziAVmr+Xm6nnyjoujMqWcq3oEhlYGAO
 WacZAQDFtdDx2koSVSoOmfaOyRTbIWSf9/Cjai29060fsmdsDM44BF6KcfMSCisGAQQBl1UB
 BQEBB0Awv8kHI2PaEgViDqzbnoe8B9KMHoBZLS92HdC7ZPh8HQMBCAfCfgQYFggAJhYhBMM5
 /lbU970GBS2bZB62lxu92I8YBQJeinHzAhsMBQkJZgGAAAoJEB62lxu92I8YZwUBAJw/74rF
 IyaSsGI7ewCdCy88Lce/kdwX7zGwid+f8NZ3AQC/ezTFFi5obXnyMxZJN464nPXiggtT9gN5
 RSyTY8X+AQ==
Organization: Systematic Software
In-Reply-To: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 578E720031
X-Stat-Signature: wypoaia6ucxcc7cr5ydd3tnguyc94sd5
X-Rspamd-Server: rspamout03
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX1+lf0fheZsAFh62pUF8FyCAun8n/lnUhgw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systematicsw.ab.ca; h=message-id:date:mime-version:from:reply-to:subject:to:cc:references:in-reply-to:content-type:content-transfer-encoding; s=he; bh=MoZKItqICXH227IyjsHXOMU1d03DmO6mHBguru8tLMM=; b=bK3j3+pi4sELGTZlcH6uVxKetKv7GNoiIv+Y+oKpkcF9lXiGCo3lo6ZQVE+0uOM/qN8apBRHHnpAjZG4lh3ulESrrDEft3L/UteD1bN0QWP8LgKhCQQbYK30GtUazan8WQOtQW5BYuuCrJSXAxNCAcg5ieS2NERJGhfdjou/+E40wlwvVXA9teKgH4qQ3xnnH4a9b97Wzp38QThZA1Of118tNpTpLKVxTBNPjXyI7xzKC3v7Truw9gTRCpJC7QbJEu403nhz2yuedaPjEOmqC+tLmxmwMwm3och2wxqLjA/LR72q8WVdsooH+7LvBOHGn+IdyJD3sHhYmBfgyxZIyQ==
X-HE-Tag: 1739710218-153587
X-HE-Meta: U2FsdGVkX18UefCablgO4pzULpiwhfmCR0+fbprjrHAUPWDgPHNz3o1mDtEYwA57pfbkrak7FNcMwcSfV65vCcCQSVTX29orOv+wUwwGU2Wt7FIB9GqncDLOEPTqLWuDe5CKAJjI7D/bLAnGmKBf3V5/164wx+eYx5HZkj70KuU2kNdQZLj8VtVQpPkdGEWg4ZsoUVmTL5X++IygJlEx9riCsELqSGHtTqwwOX4Ape7VvQ06dbx92bqly0YXzzLDr1sNfRqUCCvU+sKWs5Qaq6FSx0mEui1VAyHU4WwdyBeJ9xYXxqSPjF4Q74Uem28vrkTYFDVlSkwfjiaRLssG5RrkHogT5rFui+QXiM+uZIL9GuIR00okP/Dwng+o9jjm2355V6mMJlf3lt/vQJTZ33lPiJ8EBIXT3M/0N5KoSPtzcx1c/bTkwLmVaJxXMkKCo94su5gZ7MBtTYTqL3KAXOjI55Nbi/UkTRtzsIvbL719HacHYkVL24F9BuFcB1Ac+uMtAj/pr+5p2odrfLZpPwaIjwuWJSNNVUCI17TQP/2xAwRs+XGYcr1wMbm9f6SgAC0h+uCk0Svsvb5Nsb7rSn86K4TbLvwuorWo5pfy5N78nRkkq2rsgaa8aLuiBn8bg8V7DflaXisAPn6pl+2yPuBcB5FmGcybdfVpE8gK2mfE7m+EXgHV9g==

Hi Alex,

Looks like the tarball pages are missing the version preceding release -1!

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retrancher  but when there is no more to cut
                                 -- Antoine de Saint-Exupéry


On 2025-02-14 13:06, Alejandro Colomar wrote:
> Gidday!
> 
> I'm proud to announce:
> 
> 	man-pages-6.11 - manual pages for GNU/Linux
> 
> !! THERE ARE BREAKING CHANGES !!  Packagers, please have a look at the
> list of breaking changes.  You can find them below, or in the
> <./Changes> file in the git repository.
> 
> Tarball download:
> <https://www.kernel.org/pub/linux/docs/man-pages/>
> Git repository:
> <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
> Online PDF book:
> <https://www.kernel.org/pub/linux/docs/man-pages/book/>
> 
> Thanks to all the contributors to this release (in BCC)!
> And thanks to our sponsors!
> 
> 	-  Adfinis		<https://adfinis.com/>
> 	-  Google		<https://opensource.google/>
> 	-  Hudson River Trading	<https://www.hudsonrivertrading.com/>
> 	-  Meta			<https://www.meta.com/>
> 	-  Red Hat		<https://www.redhat.com/>
> 
> 
> Have a lovely day!
> Alex
> 
> 
> You are receiving this message either because:
> 
>          a)  (BCC) You contributed to this release.
> 
>          b)  You are subscribed to <linux-man@vger.kernel.org>,
>              <linux-kernel@vger.kernel.org>, or
>              <libc-alpha@sourceware.org>.
> 
>          c)  (BCC) I have information (possibly inaccurate) that you are
>              the maintainer of a translation of the manual pages, or are
>              the maintainer of the manual pages set in a particular
>              distribution, or have expressed interest in helping with
>              man-pages maintenance, or have otherwise expressed interest
>              in being notified about man-pages releases.
>              If you don't want to receive such messages from me, or you
>              know of some other translator or maintainer who may want to
>              receive such notifications, send me a message.
> 
> 
> ==================== Changes in man-pages-6.11 ====================
> 
> Released: 2025-02-14, Aldaya
> 
> 
> New and rewritten pages
> -----------------------
> 
> man7/
> 	pathname.7
> 
> 
> Newly documented interfaces in existing pages
> ---------------------------------------------
> 
> 
> New and changed links
> ---------------------
> 
> 
> Removed pages
> -------------
> 
> 
> Removed links
> -------------
> 
> 
> Global changes
> --------------
> 
> -  Build system:
>     -  [Breaking change!]
>        Require the user to pass '-R' to make(1).  This is necessary to be
>        able to do the following change.  When GNU make(1) releases a new
>        version, it will not be necessary to pass -R, but in current
>        versions of make(1) it is necessary.
> 
>     -  [Breaking change!]
>        Use '?=' assignments instead of ':=', to support setting make(1)
>        variables in the environment.  Now one can do this:
> 
> 	$ export prefix=/usr
> 	$ make -R
> 	$ sudo make install -R
> 
>        (The -R is only necessary in GNU make(1) versions prior to the
>         yet-unreleased 4.5.)
> 
>     -  Escape '#' in regexes, to support old versions of GNU make(1).
>        This fixes a regression in man-pages-6.10, which caused issues in
>        users with an old-enough version of GNU make(1), such as the one
>        present in Debian old-old-stable.
> 
>     -  Fix duplicate overview-panel entries in the PDF book.
> 
> -  CONTRIBUTING.d/:
>     -  Add C coding style guide.
> 
> -  RELEASE:
>     -  Document the production of the book.
> 
> -  man/:
>     -  Refresh bpf-helpers(7) from Linux v6.13.
> 
> 
> Changes to individual files
> ---------------------------
> 
> The manual pages and other files in the repository have been improved
> beyond what this changelog covers.  To learn more about changes applied
> to individual pages, or the authors of changes, use git(1).
> 
> 
> ==================== Linux Software Map ===========================
> 
> Begin4
> Title:          Linux man-pages
> Version:        6.11
> Entered-date:   2025-02-14
> Description:    Manual pages for GNU/Linux.  This package contains
>                  manual pages for sections 2, 3, 4, 5, and 7, and
>                  subsections of those.  Only a few pages are provided in
>                  sections 1, 6, and 8, and none in 9.
> Keywords:       man pages
> Maintained-by:  Alejandro Colomar <alx@kernel.org>
> Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
>                  2.7M  man-pages-6.11.tar.gz
> Copying-policy: several; the pages are all freely distributable as long as
>                  nroff source is provided
> End
> 



