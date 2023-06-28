Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D93E7417EC
	for <lists+linux-man@lfdr.de>; Wed, 28 Jun 2023 20:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbjF1SVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jun 2023 14:21:43 -0400
Received: from mail.cs.ucla.edu ([131.179.128.66]:33356 "EHLO mail.cs.ucla.edu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231708AbjF1SVk (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 28 Jun 2023 14:21:40 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id F38FA3C10C5E3;
        Wed, 28 Jun 2023 11:21:39 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id ClDDbmJMr1Jh; Wed, 28 Jun 2023 11:21:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id AA7BB3C21FA42;
        Wed, 28 Jun 2023 11:21:39 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu AA7BB3C21FA42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1687976499;
        bh=TYRQB5+6OScKoFYtZCWO5uE7bXRrJL299o2v3jlypfg=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=GnUzipf3ApWuljkbMbamRXluACtU8EtzgP6EQRa6oXzwiYkKweQUn/wiMYStlv84z
         U0SgKkvfFiJB/jm/QEs+F3gUdv+wNUi0plvn7pE0pbMtvV2rmjycvpeJcaRedoIOoB
         OevZ0easDzUVbeygeGdhdsB4i4Pl/v9CSdhNEfH1w8edY+DiAj8Ujbckv6fT5ElsQv
         C2m9bX7kUBAN4rFbGtwNvtO+IEWXZWgtcTO3lvKc0SuhTI1zG0rIgBvCp8oT8Jp8h1
         IJUI1F3O0I155Q+y851dC2+89viuGy3YE7IwjTeFjJkwKWRCljkNWJvO5BvMaAoVvj
         ukgJK+3pwfyhA==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 6PwDPjOHw1Et; Wed, 28 Jun 2023 11:21:39 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 787DB3C10C5E3;
        Wed, 28 Jun 2023 11:21:39 -0700 (PDT)
Message-ID: <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
Date:   Wed, 28 Jun 2023 11:21:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org
Cc:     musl@lists.openwall.com, libc-alpha@sourceware.org,
        libc-coord@lists.openwall.com
References: <20230628175329.GA16113@brightrain.aerifal.cx>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: regression in man pages for interfaces using loff_t
In-Reply-To: <20230628175329.GA16113@brightrain.aerifal.cx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-06-28 10:53, Rich Felker wrote:
> The whole reason loff_t exists is to avoid this problem and make a
> type that's "always full width offset, regardless of _FILE_OFFSET_BITS
> or _LARGEFILE64_SOURCE" to match with the kernel expectation for these
> interfaces.

Why can't off64_t be that type, as it is in glibc? I'm not seeing why we 
need two names for the same type.
