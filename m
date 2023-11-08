Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A617E610B
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 00:31:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjKHXbl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 18:31:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230393AbjKHXbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 18:31:41 -0500
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E2EC25B5
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 15:31:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id B1FD63C011BD9;
        Wed,  8 Nov 2023 15:31:38 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id OpyAcjheBqYO; Wed,  8 Nov 2023 15:31:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 6E8563C011BDA;
        Wed,  8 Nov 2023 15:31:38 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 6E8563C011BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699486298;
        bh=OwGyyMT/HrVcjTsc0JKQ3U1aOodaRFGUbhWs29s2bcY=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=N56lkiXgFeHOKnlXSKB8QPAAcidm36ui9bCD60asdGdKNJGwT2HRPEpZZqEZ/osUa
         n5bYDYwGFrcKNk6sG2Z3zNzkwRdlQRhefC6I5c9jyhgI4ls7JB6hyoviY2pPt7weC3
         C3eg0Bn/Qyv5NlAYrFQPJvP8bTsiKkIE0ZzvF3QDxEN9ADsGmROBl8HSOEg5awwBou
         I5Ik6/b1amIyWdr+DUghqh/G9PTT8HogXI0re4MKYzxgCRQuYjxGAYIDOmqObuFp8G
         4d14NChoknr3Z2e2cv4GF1GAPMCObSm+c95DCRR132WV+YLW4xyTwTaKFWvbG1Gdax
         vnm8glm8ZnVKw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id h0lqW7Dmpv23; Wed,  8 Nov 2023 15:31:38 -0800 (PST)
Received: from [131.179.50.221] (wifi-131-179-50-221.host.ucla.edu [131.179.50.221])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 45E0B3C011BD9;
        Wed,  8 Nov 2023 15:31:38 -0800 (PST)
Message-ID: <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
Date:   Wed, 8 Nov 2023 15:31:38 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>,
        Carlos O'Donell <carlos@redhat.com>
Cc:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
References: <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org> <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo> <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
From:   Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <ZUwHr2-l1WADR57b@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/8/23 14:11, Alejandro Colomar wrote:
> I just don't think we need,
> as GNU or Linux projects, to be restricted to the decisions of ISO.  We
> can realize that certain functions are bad, and mark them as deprecated
> in our scope.

There's enough use of strncpy for the intended use (smallish fixed size 
character arrays that are null padded, not null terminated) that saying 
it's deprecated would likely cause more trouble than it's worth. It's 
not just utmp and tar; it's also socket programming (sun_path) and I'm 
sure other stuff.

Were we designing the C library from scratch I'd agree with you: in that 
context, strncpy would clearly be more trouble than it's worth. But now 
that we're stuck with strncpy we have better things to do than try to 
deprecate it.

Instead of saying "deprecate" I suggest we say something like "This 
function is generally a poor choice for processing strings" and point to 
the longer man page about strings in general. That's what the glibc 
manual does and it works reasonably well.
