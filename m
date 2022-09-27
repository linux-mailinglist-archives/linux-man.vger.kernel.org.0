Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DDCA5ECF06
	for <lists+linux-man@lfdr.de>; Tue, 27 Sep 2022 22:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232712AbiI0U6I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Sep 2022 16:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232439AbiI0U5q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Sep 2022 16:57:46 -0400
X-Greylist: delayed 337 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 27 Sep 2022 13:57:45 PDT
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEC0A1B85E3;
        Tue, 27 Sep 2022 13:57:45 -0700 (PDT)
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 6F12C14D8EE;
        Tue, 27 Sep 2022 16:52:05 -0400 (EDT)
        (envelope-from junio@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=from:to:cc
        :subject:references:date:in-reply-to:message-id:mime-version
        :content-type; s=sasl; bh=JEyKOsf/3xeEPhY8HDDyVLtgVLQ+O91IfWm0cq
        eaLPg=; b=JcLqtsnLdGILoX/p7jU2KicyU0OIJbKTqlTXKga7ZMF80OZUw7Ycsb
        /GC03wCizJ7VwYU2uvxbIk0MC2x6u2oBfgDDKeNr2r20VAMNKO2XkK1RA+udqIHh
        m4/wMSr6rnF4hj6osXb5/dOoEf9kRRQlEKuKMCQVrX/Vhl3O08NYo=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 552FA14D8ED;
        Tue, 27 Sep 2022 16:52:05 -0400 (EDT)
        (envelope-from junio@pobox.com)
Received: from pobox.com (unknown [34.83.5.33])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 83D2914D8EC;
        Tue, 27 Sep 2022 16:52:04 -0400 (EDT)
        (envelope-from junio@pobox.com)
From:   Junio C Hamano <gitster@pobox.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Zack Weinberg <zack@owlfolio.org>,
        Theo de Raadt <deraadt@openbsd.org>, rsbecker@nexbridge.com,
        'linux-man' <linux-man@vger.kernel.org>, tech@openbsd.org,
        Florian Weimer <libc-alpha@sourceware.org>
Subject: Re: readpassphrase(3) in glibc, and agetpass()
References: <a0371f24-d8d3-07d9-83a3-00a4bf22c0f5@gmail.com>
        <73ac38a2-c287-4cc1-4e9c-0f9766ac4c0c@gmail.com>
        <00d501d7ccbe$0169c340$043d49c0$@nexbridge.com>
        <63238.1635515736@cvs.openbsd.org>
        <6d8642e9-71f7-4a83-9791-880d04f67d17@www.fastmail.com>
        <c8287618-30c4-f14b-8ad7-898fee99d944@gmail.com>
Date:   Tue, 27 Sep 2022 13:52:02 -0700
In-Reply-To: <c8287618-30c4-f14b-8ad7-898fee99d944@gmail.com> (Alejandro
        Colomar's message of "Tue, 27 Sep 2022 21:19:06 +0200")
Message-ID: <xmqqedvw35hp.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Pobox-Relay-ID: 3E18CCE0-3EA6-11ED-9B72-2AEEC5D8090B-77302942!pb-smtp1.pobox.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:

> I happen to be working on replacing getpass(3) in shadow-utils.  As
> there is no replacement in glibc, I'm making the code depend on libbsd
> on GNU systems.
> ...
> Would you mind implementing readpassphrase(3) in glibc so that it's
> easier to use something safe and portable without resorting to
> compatibility libraries?  Also, I'd like some review of this function,
> if you think the API could be improved.  Maybe agetpass() would be a
> simple almost-drop-in replacement for getpass(3), so if you like it
> for glibc, let's discuss it.
>
> I chose a predefined buffer size to not have to pass a buffer size all
> the time, which could be error-prone.  I also allocated the buffer
> internally, to make it easier to replace getpass(3).  It may be
> desirable to use existing buffers, and pass them through a pointer,
> but for shadow-utils, it was simpler to keep the getpass(3) API.
>
> I don't know what was the practice with PASS_MAX regarding the NUL
> byte, but to avoid creating a buffer of a power of two plus one, I
> decided that the NUL byte would be within PASS_MAX.  Another solution
> would be to declare PASS_MAX to be something like BUFSIZ-1, and then
> use PASS_MAX+1, but I opted for simplicity.

I understand that in an old thread last fall we were CC'ed only
because we are one of the users of getpass(3), but could you take us
out of the CC list, please?  We'd migrate, if getpass() starts being
unusable for us, away from it and choose an alternative, but until
then git@vger.kernel.org is a good place to discuss this.

Thanks.
