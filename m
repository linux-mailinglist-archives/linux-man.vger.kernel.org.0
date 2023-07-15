Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79C5A754BE5
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 22:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjGOUBk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 16:01:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOUBj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 16:01:39 -0400
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E35EBE5C
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 13:01:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 1C4D33C011BD4;
        Sat, 15 Jul 2023 13:01:38 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id KDkfd72om9g4; Sat, 15 Jul 2023 13:01:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 8BA2C3C011BD5;
        Sat, 15 Jul 2023 13:01:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 8BA2C3C011BD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1689451297;
        bh=Pync/Qb2HFM73eMZXXWRlrPWld4l/3o3APROw8F5hpQ=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=mXVIufLzYfoe5NAnxs66CXN5FZNwZDszYsO4mha0OUZA6/+57jHZVpVXcUM4ko+Xe
         1i2Xd7gz4C6jBw+dnqTyVhdgeasyaPfO+PgyCLov8HyTkYg2VFl4CtTE98pu2RL3OR
         z/5lnDOuZWXud9yvRJJRdKtoLJBUK/YZ7TvaOA97JvFa9YW3AUWMI6Fw0lNP/Sg9B2
         rRRZp2WiAqXY340aVKpOZ+Lg0HItQ8OexlM2M/hFAdKnJh6+KzWh3c+OD94KG9q8Jy
         Tobs9UeNpfA21xyoTmCRdWC6OmgDFHuVlE7+5Lorrfw7OzMPVOAkY61UL+azJOFvuQ
         wqCr/oLarUEwQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id J5Tna5i3nN_D; Sat, 15 Jul 2023 13:01:37 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 419043C011BD4;
        Sat, 15 Jul 2023 13:01:37 -0700 (PDT)
Message-ID: <07135379-f4bf-0c39-206d-527e67add2c0@cs.ucla.edu>
Date:   Sat, 15 Jul 2023 13:01:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [musl] Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for
 splice, etc.
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>, Alejandro Colomar <alx@kernel.org>
Cc:     Sam James <sam@gentoo.org>, libc-coord@lists.openwall.com,
        linux-man@vger.kernel.org, "A . Wilcox" <AWilcox@wilcox-tech.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu> <87lefpehgo.fsf@gentoo.org>
 <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
 <20230715183511.GJ4163@brightrain.aerifal.cx>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <20230715183511.GJ4163@brightrain.aerifal.cx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-07-15 11:35, Rich Felker wrote:
> Is "you can't use these
> interfaces without -D_FILE_OFFSET_BITS=64" an acceptable outcome to
> the glibc folks?

You can ask on libc-alpha if you like. I'll follow up if necessary.
