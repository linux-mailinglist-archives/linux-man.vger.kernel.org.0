Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09AD846C30A
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 19:44:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240665AbhLGSrg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Dec 2021 13:47:36 -0500
Received: from esa3.mentor.iphmx.com ([68.232.137.180]:50633 "EHLO
        esa3.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbhLGSre (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Dec 2021 13:47:34 -0500
IronPort-SDR: KmEDRFIU+lZESwQybumotJS3k5nuKAPAc+4c0iixQn5hsZLjerfAIH3nauGe6Ki8VWIYkeZ6Y9
 FW/Mcp/UBS+Xo74RPiGVF7PdnRAxEs+JEa8yBhvYdMs2x6QMtyfXZuxJ9UzNjvW2TPb8iE5lOJ
 a7neWGz58atC8hZGwHSQnfmq1T0Bjx8vI6BtFAptiiixlQuTLA0rNlEXwiLYHw1QQNhp38beHE
 fZbGWkDHifMBjyvu+U26aHd7mkpzqnQcT1iG6irAh5xlQaM1wcADOzlJ08dU5pirkHLzDiwm5+
 ujo1vXDhS22RF9dpOIpeGPTp
X-IronPort-AV: E=Sophos;i="5.87,295,1631606400"; 
   d="scan'208";a="69247589"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 07 Dec 2021 10:44:03 -0800
IronPort-SDR: mn9eVMeLiyZ1P+Q7TRRREpdKP3XZYlZH0velsO2aAjgwhj0M8BywXD7OKq78Z7/qdNrtdGbLZ+
 A2jaC2agRUrFBHH9scDaY1LtNI71+8kvb/HHCHY++EprJSPmJu0RsaM+qJ0ByaCogut1JRhmDC
 esdHMqqZyuOHrYAJQWgvWN0SbC6I7lySxwQX5NEplvWKmzVEuOBJMtLVa3W2DwOAzvQbGOgEbu
 dV9iyDIiKtF2Wqb7ZultPrZ7dH3/F6OAVNiTI0fPDWHyjSWnjl0HMSdxx7LRpwGwNd8EpZLrN6
 K5M=
Date:   Tue, 7 Dec 2021 18:43:56 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     =?KOI8-R?B?zsHC?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, Zack Weinberg <zack@owlfolio.org>,
        <libc-alpha@sourceware.org>
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
In-Reply-To: <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
Message-ID: <alpine.DEB.2.22.394.2112071841360.426691@digraph.polyomino.org.uk>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com> <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz> <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com> <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <a55c07d0-960f-4dfe-90bf-4fee33976198@www.fastmail.com> <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com> <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed;
        boundary="-1152306461-1623543596-1638902636=:426691"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-13.mgc.mentorg.com (139.181.222.13) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---1152306461-1623543596-1638902636=:426691
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8BIT

On Tue, 7 Dec 2021, наб via Libc-alpha wrote:

> Looking through "timespec" on Aardvark for prior art reveals nothing,
> except for a likely resolution to any proposal of this sort:
> > Although we agree that it would have been better if these functions had
> > been designed this way to begin with, we believe that making the change
> > now will break existing, conforming code with no real benefit. 

Geoff Clare said (austin-group-l, Thu, 29 May 2014 16:20:22 +0100):

  C11 requires tv_nsec to be type long, which means that if we change
  it to be a new snseconds_t type in Issue 8, we would have to require
  that snseconds_t is defined as long in order not to conflict with C11.

and Rich Felker (Thu, 29 May 2014 13:08:59 -0400):

  This is just a linux kernel bug which needs to be fixed. They have a
  number of other such bugs in x32 too. It's possible to work around it
  in userspace on the library side (we do this in musl libc) but it's a
  bit costly/painful and glibc does not do so yet. There's an open bug
  for it which I filed:

and I don't see any other responses in that discussion.

-- 
Joseph S. Myers
joseph@codesourcery.com
---1152306461-1623543596-1638902636=:426691--
