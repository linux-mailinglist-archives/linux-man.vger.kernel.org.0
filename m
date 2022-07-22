Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2FF57E43D
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 18:19:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232197AbiGVQTt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 12:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbiGVQTs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 12:19:48 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D8DDFD4
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 09:19:46 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oEvNQ-00HKLU-Cg; Fri, 22 Jul 2022 18:19:44 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oEvNQ-006kMn-4y; Fri, 22 Jul 2022 18:19:44 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oEvNQ-0000S9-4O; Fri, 22 Jul 2022 18:19:44 +0200
Date:   Fri, 22 Jul 2022 18:19:44 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: All caps .TH page name
Message-ID: <YtrOIMPXksaGs0lu@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220721183620.hdvgwwef66hmrgln@illithid>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

G. Branden Robinson wrote on Thu, Jul 21, 2022 at 01:36:20PM -0500:

> I would take a jaundiced view toward any software project
> that distinguished its man page names, whether internally or from
> others' solely by a difference in lettercase.

Inside one project, causing such clashes is certainly a bad idea.
But just as same-case clashes sometimes happen accidentally -
consider this on OpenBSD with the "mono" package installed -

   $ man mdoc | sed -n 4p
       mdoc - semantic markup language for formatting manual pages
   $ man 1 mdoc | sed -n 4p
       mdoc - Mono documentation management tool

different-case clashes also happen occasionally:

   $ man -T ascii err | sed -n '4p;5p'
       err, verr, errc, verrc, errx, verrx, warn, vwarn, warnc,
       vwarnc, warnx, vwarnx - formatted error messages
   $ man -T ascii ERR | sed -n '4p'    
       ERR - OpenSSL error codes

   $ man -T ascii sha256 | sed -n '4p;5p'
       md5, sha1, sha256, sha512 - calculate a message digest (checksum)
       for a file
   $ man -T ascii SHA256 | sed -n '4p;5p;6p;7p'
       SHA1, SHA1_Init, SHA1_Update, SHA1_Final, SHA224, SHA224_Init,
       SHA224_Update, SHA224_Final, SHA256, SHA256_Init, SHA256_Update,
       SHA256_Final, SHA384, SHA384_Init, SHA384_Update, SHA384_Final,
       SHA512, SHA512_Init, SHA512_Update, SHA512_Final - Secure Hash
       Algorithm

Admittedly, these clashes are extremely rare, so it's not a big issue 
either way, at least not for practical purposes.

Yours,
  Ingo
