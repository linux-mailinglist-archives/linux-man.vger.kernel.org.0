Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8F3A780D06
	for <lists+linux-man@lfdr.de>; Fri, 18 Aug 2023 15:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377370AbjHRNxX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Aug 2023 09:53:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377464AbjHRNw6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Aug 2023 09:52:58 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4755730F1
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 06:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692366732;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Lox2CyolrD6IH1m3LYEJN3Ey2retif7CEsx3qp8dnlM=;
        b=EjFQXUE5cN6znr+r7tPvs/Tq4LOcFXV1xFKtHWkQLfqrUBIBqbomXGGy4rpPCt127fxML+
        hgsjJuQXMrQPkfwYfDbXe8IFleqFrabvYdI6FGkgcwJvM7xOe0e5ChAM4Wb4RSmOzJnly4
        Jlp+HTN626c27ZjdJp3pOkbmjNaBfTU=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-XemFg0DpMwu4ETEMhBjvsQ-1; Fri, 18 Aug 2023 09:52:08 -0400
X-MC-Unique: XemFg0DpMwu4ETEMhBjvsQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 038DD29AA38A;
        Fri, 18 Aug 2023 13:52:08 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.59])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 88379492C13;
        Fri, 18 Aug 2023 13:52:07 +0000 (UTC)
Date:   Fri, 18 Aug 2023 08:52:05 -0500
From:   Eric Blake <eblake@redhat.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Message-ID: <mwedpljgp4364rqumqlweplc5aypvfh6cvea2m5lrf4yeehtov@7verc3ubkoii>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
 <20230817234903.qffupzohqyjslsyf@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230817234903.qffupzohqyjslsyf@illithid>
User-Agent: NeoMutt/20230517
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 17, 2023 at 06:49:03PM -0500, G. Branden Robinson wrote:
> At 2023-08-17T10:23:55-0500, Eric Blake wrote:
> > | diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Functions/getlocalename_l.mm
> > | index 13af2a5..339bfc5 100644
> > | --- a/Base/Text/Functions/getlocalename_l.mm
> > | +++ b/Base/Text/Functions/getlocalename_l.mm
> > | @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, locale_t \f6locobj\fP);
> > |  .sE
> > |  .yE
> > |  .mH DESCRIPTION
> > | -The
> > | +If
> > | +.Ar category
> > | +is not LC_ALL, the
> > |  .Fn getlocalename_l
> > |  function shall return the locale name for the given locale category of
> > |  the locale object
> 
> Thanks for the peek behind the curtain, Eric!
> 
> I infer that the Open Group's use of mm has an extensive layer of
> bespoke macros supplementing it (not really a suprise).  _None_ of the
> macro names we see above appears in Documenter's Workbench troff 3.3 mm
> or GNU troff.

Indeed, there is another git repository containing a (rather sizable)
set of tooling for converting sus_base into both .pdf and .html
formats.  Among other things,

https://gitlab.opengroup.org/the-austin-group/sus_tools/-/blob/master/tools/macros.xo

is over 43kB, containing custom macros such as:

| ..
| .\" Heading on man page: really a list item
| .de mH
| .\".P
| .br
| .ne 4v
| .LI "\f3\\$1\f1"
| .br
| ..

Supposedly the process is fairly automated, though (but I haven't
tried it myself); the README for that project states:

| For example, to do a build of SUS_Base from scratch:
| 
|     Check out sus_tools and sus_base from gitlab
|     cd sus_tools
|     ./build-docker.sh
|     cd ../sus_base
|     ../sus_tools/run-docker.sh sh -c 'cd /build/Base && /tdocs/build/tools/build'

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.
Virtualization:  qemu.org | libguestfs.org

