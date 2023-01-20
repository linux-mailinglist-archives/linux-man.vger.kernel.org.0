Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C241675C65
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 19:05:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbjATSFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 13:05:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbjATSEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 13:04:52 -0500
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7465866019
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 10:04:50 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id AFEEB5C0058;
        Fri, 20 Jan 2023 13:04:49 -0500 (EST)
Received: from imap45 ([10.202.2.95])
  by compute1.internal (MEProxy); Fri, 20 Jan 2023 13:04:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; t=1674237889; x=1674324289; bh=Jgm6+mnRai
        49Ie+6zLqoN91E8e+nrZZO2RfDdiqlPoQ=; b=JyZEa1L5gwbS3A7U7lYD5U3757
        ZKqTPIMUZ4wU5r16YOMie0C/U+pVAg4LqD3GCV4ozvjjPDU95yTsWF7cFu/+chr3
        fH1gg1wKbf//NCI8OMwJhKR+9xOdddp99aMzlo1u5faur66xikblimBisRh4M4O6
        8QIqlNIZBoBY9R1uFFHRix1J7cBRpPeXnUBapzpN0pAJsyQ+18P32XZoGr+pwcV+
        Do0QyeDGhb2Mu4Et3Y2TOnvXUK9sbh4OaX/QVsVUJ6YVVWs//qRsXZMp/26e4Tka
        Wni4uXwohaIvmYSyhvVNzDHlTeas+LfYBg9OkPH8qOE/zFgi0dnnLASHrHnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; t=1674237889; x=1674324289; bh=Jgm6+mnRai49Ie+6zLqoN91E8e+n
        rZZO2RfDdiqlPoQ=; b=JfCtFDfXoAwEfKlSMbDG5LyK9Enz70etF+1W8dwAXOE7
        TyIxtWC3AlbxSPa5DhFBaskGX0MSo/jtJhPZ5TCKeDW2b/b/zbKJ8NS2knOflJKn
        AIiZC6hFNg6sUpDwm4tt42FjUSPvTe/Ielx3/xm0ElLE3282iX3ViklcBzWdmLA2
        0mvLAIspR23pMVfCLMowhMpByn2HyJn4C+1QIOe7cBl1rb994NaZEpX0iKd/1coF
        aOgpXinvZFxPanLvmJrx+YYqaFJ3wG0CjeKmRZ4qOCqxMWsFp8nynjf+7vSENmRz
        wN8WUUhx5YboI3uqj1xebEALQIJDIfam9sFLkNSs6g==
X-ME-Sender: <xms:wdfKY_l8k74Iox0p__RwHtoefuFcaiNKKSH6gExkwoNgOo90SeD51A>
    <xme:wdfKYy0IlhI52ikWZZBRzdumDQI3pb-jfOuDYPmOwQ4jsbgLYzazu1lw2gciVQcLG
    SpEuVqf2Sn2AWaKIas>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudduvddguddutdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdgk
    rggtkhcuhggvihhnsggvrhhgfdcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenuc
    ggtffrrghtthgvrhhnpefgleehveejhefgffetgffhveefvdekgeehtdffleeihfevgeei
    ffduveffgeeiudenucffohhmrghinhepghhouggsohhlthdrohhrghdpshhtrggtkhhovh
    gvrhhflhhofidrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpeiirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:wdfKY1pBFjxYO0UD_cnTV5e8M3mZCHjDTLiiGrPMFj49Vjyh2QOaLw>
    <xmx:wdfKY3kbDCS9D1zd9CxN_YmvjARt-PABVBjecvnmYa4WX1WN1XVVmw>
    <xmx:wdfKY90sprfDRUbONZbs5mNr-rave4PhHmKjcCfeMxdIMrtZ93jKUA>
    <xmx:wdfKY18DszCwit7R91hUb-od_w01hE7F1oR96l5Mc_ffUaUJZR4lkg>
Feedback-ID: i876146a2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 2013C272007B; Fri, 20 Jan 2023 13:04:49 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-85-gd6d859e0cf-fm-20230116.001-gd6d859e0
Mime-Version: 1.0
Message-Id: <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
In-Reply-To: <20230120134043.10247-1-alx@kernel.org>
References: <20230120134043.10247-1-alx@kernel.org>
Date:   Fri, 20 Jan 2023 13:04:26 -0500
From:   "Zack Weinberg" <zack@owlfolio.org>
To:     "'Alejandro Colomar (man-pages)'" <alx.manpages@gmail.com>,
        "GNU libc development" <libc-alpha@sourceware.org>
Cc:     "Alejandro Colomar" <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=C3=A8s?= <rouca@debian.org>,
        "Eric Blake" <eblake@redhat.com>,
        "Stefan Puiu" <stefan.puiu@gmail.com>,
        "Igor Sysoev" <igor@sysoev.ru>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous union
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jan 20, 2023, at 8:40 AM, Alejandro Colomar wrote:
> The historical design of `sockaddr_storage` makes it impossible to use
> without breaking strict aliasing rules.  Not only this type is unusable,
> but even the use of other `sockaddr_*` structures directly (when the
> programmer only cares about a single address family) is also incorrect,
> since at some point the structure will be accessed as a `sockaddr`, and
> that breaks strict aliasing rules too.
>
> So, the only way for a programmer to not invoke Undefined Behavior is to
> declare a union that includes `sockaddr` and any `sockaddr_*` structures
> that are of interest, which allows later accessing as either the correct
> structure or plain `sockaddr` for the sa_family.

...

>     struct new_sockaddr_storage  nss;
>
>     // ... (initialize oss and nss)
>
>     inet_sockaddr2str(&nss.sa);  // correct (and has no casts)

I think we need to move slowly here and be _sure_ that any proposed change
does in fact reduce the amount of UB.  This construct, in particular, might
not actually be correct in practice: see https://godbolt.org/z/rn51cracn for
a case where, if I'm reading it right, the compiler assumes that a write
through a `struct fancy *` cannot alter the values accessible through a
`struct simple *` even though both pointers point into the same union.
(Test case provided by <https://stackoverflow.com/users/363751/supercat>;
I don't know any other identifier for them.)

zw
