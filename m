Return-Path: <linux-man+bounces-2864-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12846AA980D
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 17:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 274543B3B52
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 15:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E87C26138F;
	Mon,  5 May 2025 15:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=usta.de header.i=@usta.de header.b="bQBoLapt"
X-Original-To: linux-man@vger.kernel.org
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [129.13.231.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D1125F98D
	for <linux-man@vger.kernel.org>; Mon,  5 May 2025 15:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.13.231.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746460444; cv=none; b=YnrjvR7bg8iCV108uaBt7Vx+O4Rtah0DzwLCcrRalvmj8YLSxeY/4zsT+0TXOUiLjMDrSOAydiJtpicF8Xcn5CTv5dwKxezdj3wvJfW0nPGs6Z6zw5xyEN+/qE2iKblFGZMtn5JcJq/iEHnQxuoEE7W/zoQkRGpn5bM+IkrmoTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746460444; c=relaxed/simple;
	bh=kJcmuVi702ynciwUEQqFu4Ir4hrG5hayIkWWa0txHWA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShJf5y75PU1JTWTgNPDs2mtbyxPt0xzmA2nkLhOSyiu9xoQeNrRRpMK6LHl1mBVuwM/xSRanpc1PJhkw76U7HvU6Eu5aGYrQAzVS5SxtakdwpG8BswveqhPsUQCTjIZ5cvoP9ted34bQtGTivqqVNRkfESWVOlegpT++pkByYtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=usta.de; spf=pass smtp.mailfrom=usta.de; dkim=pass (2048-bit key) header.d=usta.de header.i=@usta.de header.b=bQBoLapt; arc=none smtp.client-ip=129.13.231.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=usta.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=usta.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=usta.de;
	s=kit1; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject
	:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ZnqJC9yuV8VdKl/nHYtOE4n07HX+Gtf/oqFAFZtZi1s=; b=bQBoLaptKxj1dF0HUhenrWyuSw
	pZyFqt/CQEuMkFy2xc5NY3jtaMnulbp5bnuW9HC7U7SMQ7FnctRXkKnuSLptoZwN4He03fMBkTamz
	lpCfVd24PmIDDniraMPTv157pvYX1jOntsJB7E3bWjxvQHYLCTOzze8KlWC5j8koKgtOUr7fNardZ
	eGedP1dzpv0Y9kRGfM8z5IrpE7i+vnn5o704+Pv8m3EFl56LKaun1Uo/wHM48s7rUkCKfCyCyBx5g
	V/netwYquPRv9zcVXkygSFM9zbP2WxlflQgNLdLOZLP21g2aj/PCA/RFxYq1P4AcuUYoYRWEHlJaa
	Dn/N3dMQ==;
Received: by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(envelope-from <schwarze@usta.de>)
	id 1uBxx0-0021Wa-1r;
	Mon, 05 May 2025 17:41:50 +0200
Received: from imap-2.asta.kit.edu ([2a00:1398:5:f400::36])
	by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
	(envelope-from <schwarze@usta.de>)
	id 1uBxx0-004UXO-3n; Mon, 05 May 2025 17:41:49 +0200
Received: from isnote.usta.de ([84.177.226.241])
	by imap-2.asta.kit.edu with ESMTPSA
	id qG3PKz3cGGjyUAUA4A1LTA
	(envelope-from <schwarze@usta.de>); Mon, 05 May 2025 17:41:49 +0200
Date: Mon, 5 May 2025 17:41:48 +0200
From: Ingo Schwarze <schwarze@usta.de>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <aBjcPH9OU6BTgDCX@isnote.usta.de>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
 <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
 <20250503004917.6hg6ymsdfnnn4o7v@illithid>
 <aBiX4joChgpehn0B@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBiX4joChgpehn0B@riva.ucam.org>

Hello,

Colin Watson wrote on Mon, May 05, 2025 at 11:50:10AM +0100:
> On Fri, May 02, 2025 at 07:49:17PM -0500, G. Branden Robinson wrote:

>> In my shell startup files, I make sure to update $MANPATH any time I
>> update $PATH.
>> 
>> This is not a common piece of cargo that Unix newcomers acquire;
>> historically, I suppose a lot of man(1) implementations didn't support
>> $MANPATH, but man-db has for decades, and I see mandoc(1) does too.

> FWIW, with man-db, it's usually best for most people not to set MANPATH at
> all unless manual pages are somewhere that can't be straightforwardly
> derived from PATH.  man-db will normally work it out based on PATH, and that
> way it's harder for them to get out of sync.

Actually, mandoc(1) does not really recommend setting MANPATH either.

I consider it the job of the maintainer of the mandoc package on each
operating system to set MANPATH_DEFAULT to a value that is reasonable
for the operating system, as documented in configure.local.example.

If the system administrator of a particular machine really wants to
go full tilt crazy and use a site-specific directory layout, the
best way to deal with that in mandoc is putting "manpath" directives
into /etc/man.conf(5).

When users have to worry about setting MANPATH, i think somebody is
doing something suboptimal somewhere, either the system administrator
or even more likely the package manager of the oprating system.

Less configuration = more happiness.  Make it sane by default.

For example, personally, i hardly ever use MANPATH for anything except
for testing purposes during core mandoc development.  In the extremely
rare cases where i want to access custom manual page trees in non-standard
locations, i use the -M command line option rather than MANPATH.

So even a highly specialized developer who spends about half his time
on manual page development barely needs MANPATH at all.  The thought
that ordinary users might feel compelled to use it is rather
surprising.

Yours,
  Ingo

