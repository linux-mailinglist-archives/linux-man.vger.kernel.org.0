Return-Path: <linux-man+bounces-1022-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F08D6BF4
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 23:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C8DD1C2594B
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 21:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6273BAD59;
	Fri, 31 May 2024 21:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="n372wgRT";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="HeWwgxcy"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9B97E788
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 21:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.24
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717192299; cv=pass; b=UwKum+ji7fpeP5iEbBXtaDWf+0526AzRqY6l5BiuC8K1OzSewItZnBMJb8cMdb+HFUW3sGJWU5Zvl0wh8sDVScx+yc9ZlRwFNuuOjV7EfscDbLhMsSs10rdyd3Y0r/77icwx77WYWKCSUToXb6Drl9zTsXegsQ1kGSczI5x/1dU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717192299; c=relaxed/simple;
	bh=tlWLZvjj8GVLiM6xcX8CAhfHEyEM0WpvPJxh4t7BUVU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=B8YNNeDy75GjXpaIrA77d/D73NOnmb1cHHgqT0nwgE176R6wPDRHRWvZrwnrdLIVkZB2dnOpSMaH5KCEu5WoVIWDKbPR5NooqKbRHGICaDyEg6DJY1KnOTcrmnikFS1+PPAKdVjNTdDg6k0oc5MuiofbiretpGUnoH/G19K6Qug=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=n372wgRT; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=HeWwgxcy; arc=pass smtp.client-ip=85.215.255.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1717190488; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=T8TvZeZg4P26vvyx96rZBTinnnKPntsrT1S+x7piixrG/GNuBIVwC+g21gOzt5IpdG
    i5kNN7m1912OpToAk/16elRZLpDsT5KLpzMYqHO8XdEs43LO8llkE2QLHy54QpQhwqp5
    UDsNSHnjoeeRc6BSrpUDGPfivv5B7Rn7LhBx38W6JmZ1pXLB93ThBlu+GkckOis3le8z
    h/rwi+zLs4vj3zcjyVBy8XNhBDYwzth/sG1wNQ0aBhLIumUF5IwcUJg482j0LN5fit4E
    sMzrqC/TvgfzgpwE6/KXLJSdpo0ayefvue8E4+z7shTMJURAzt9Z17araOW9jw36HLaA
    Dh2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1717190488;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=PDsj3FNmQefB9wpuPvm1I/UDU8OiD8QDofOr+cfTG+g=;
    b=IwQ8YymkZnN5oJ1X6ugrVKeD9n2V9DwqFogAt6ywHGJ2RWGBXbVL4o1jFjsqbQCS5v
    qGr+2r+thBa/m5eLmv2JA7xWsJvQI8q84WbcjAlttEESysaJN1grlYpH7KrxDgc1Kn/I
    wgf8P9Fl6uxeYiN598JT/wLmRaKo41LNaA816HSSV6Zyui0AB4hcT8Ja36UZxnlyzs30
    dZvxY90HKE7AWYSIyftyKQUAB7Npgstz6+kZwa0H/cteXvnT/jVmfdN5LOooo/7s1rPj
    R8IEInQwFRuQLENujP2MStRNjxSSARHyywVkuaLiviY4OZvt+1q1iLRt3fmSh84pl8i+
    tc3A==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1717190488;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=PDsj3FNmQefB9wpuPvm1I/UDU8OiD8QDofOr+cfTG+g=;
    b=n372wgRTo5ZDEd1qc7IyzI5eSNHJWBnquu8cReC3w6t9YPC6/NOQYUOgorRNAfaiSj
    b+aiRzEg0bR+VPUGEaXkpHgR1KwLC5BmmM1oX7LGVp9TRjfdGOA7haf90D1p8qDXb5ad
    lh7LUTwbhjSW0IFKWzGJxbiUw7WC37ciPn7JDNKIhN0sPcPh+vvw+c1i5X9bQ36eJR4e
    KM1OeWNHDn639Cgj4+j2iwb52Z4POk4d0tpBhvkPpuYIut25FaMiuw4PS9xvqdTxta14
    lpjA/MLSP6759v/jazW6fI/iRm4JPfjCw5d66AimI+aXESzuAxx+Y0DGDDWvWLFvJEUO
    R6Rw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1717190488;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=PDsj3FNmQefB9wpuPvm1I/UDU8OiD8QDofOr+cfTG+g=;
    b=HeWwgxcypWluRp1a40DQYB/4ejp2Qq83fCi4N0IkMcFKybP+CCddrmtFEnUHBWYUBv
    gqgqVL4jJ2aWX1rXN3Cg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPD2/ItsGqaihUl+hxsHcmqCvirsA=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 50.5.0 AUTH)
    with ESMTPSA id Ndd2ca04VLLSf1t
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 31 May 2024 23:21:28 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org
Subject: POSIX conformance document
Date: Fri, 31 May 2024 23:21:28 +0200
Message-ID: <12722244.etNSJPHsjv@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

POSIX [1] specifies that conforming implementations shall come with a
"conformance document" that describes "implementation-defined" characteristics
[2]. Two such example conformance documents are [3], [4].

For Linux (or any Linux distro), I cannot find such a document on the web.

Is such a document only considered useful for business/marketing purposes?
Isn't there some value in it also for regular users and developers?

Will there be some effort to create such a document for the upcoming
POSIX.1-2024 standard, for Linux and the GNU libraries and tools?

I'm asking because I've collected the answers for all *gettext() functions
and the msgfmt and xgettext programs (that will be part of this new POSIX),
but I don't know where to best document them. Likely in the manual of
GNU libc and GNU gettext, right?

         Bruno

[1] https://en.wikipedia.org/wiki/POSIX
[2] https://pubs.opengroup.org/onlinepubs/9699919799.2018edition/basedefs/V1_chap02.html
[3] https://empyreal96.github.io/nt-info-depot/SourceLevel/base/subsys/posix/pcd.doc
[4] https://www.qnx.com/developers/docs/6.5.0SP1.update/com.qnx.doc.neutrino_prog/posix_conformance.html





