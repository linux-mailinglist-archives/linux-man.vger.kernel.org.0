Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D31386D10B6
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 23:21:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229470AbjC3VVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 17:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjC3VVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 17:21:21 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22C867EED
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 14:21:18 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id f14so1728328oiw.10
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 14:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680211277;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hqtS+DqvHI7AH/wWLmGXbb/4BzT/ziVq2Y/ZF1NpVMo=;
        b=DlrzqEi/uDqe0Q3X/bzpGEZBVjK9R14Ok47ye9a8zQMnU9D+epr/11i/ShPhSjshd5
         XKev75zuoVZsApzEkd9yjjTYlU9FaWBKkgttf3ODpAPKEe/xAIjhJzIFN2oUdPB5Wqb1
         82gvT91ktbL+aw8VPqGWqBRsD6BZhGf6zkV5fo1mqqhgu91G+eUti8DwPqi8zruHLoDU
         V1scvnwc/03KUxhwiLYK2wjZDPYamb7hWNd1ku7Z0DMgoIbu4IiWo3VF37eidGRdcQP2
         /osF/P8RBeXA+ha7HpmkRtuJZ0dCIPR58MVxnO3MTjiNw4/CvQcdaB9YB7YX1KCXUGrm
         L4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680211277;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hqtS+DqvHI7AH/wWLmGXbb/4BzT/ziVq2Y/ZF1NpVMo=;
        b=gujmBR4zf/YrP7/boJcSwKZtvHDIcsudN4cfrUHXd+p6hOzTR4IwiZlLDcAy88W2gE
         ELnZrsc4lUSA178tbNNyEfupTwquczxTonMt5/myoaCA8Dq3x4idOo09Oco/TaxGUh+H
         f2/wylfvT/R304Ov3zQfar9wOUw35igkBHB823oN5zDbGJOzBVKay/vgf2tmNeLPVSB8
         1QGL8JhIVDofXgdQPU79nmaD1hRiTs9bH0WN1hKNDmbnnVA0zxiqKZ5GGMk8z6Is923X
         N7fjjKUo6Lq7FWoTTc5RkcckMX61NGML7+8OXTgyKYiRGLWEWUD1LE2BWvOlMt6z+gdP
         Qnqw==
X-Gm-Message-State: AO0yUKVMAWw18Ss0u7iMsrC99wYcg0fKeVQ6e4NYBg/74gVp3l3Oqiic
        3lIYa8F1SY5kgVH22xX1dn7kWKrVElI=
X-Google-Smtp-Source: AK7set9V9WXHhpE1MC8FjCuUbCsSc/JW5qvtDFAqf+oMVrAWsN6NV36TZNPSFooswEG7+ujlgKxc6g==
X-Received: by 2002:a54:400e:0:b0:37a:cef7:ca15 with SMTP id x14-20020a54400e000000b0037acef7ca15mr10780458oie.18.1680211277256;
        Thu, 30 Mar 2023 14:21:17 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c192-20020a4a4fc9000000b0053b88b03e24sm134057oob.18.2023.03.30.14.21.16
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 14:21:16 -0700 (PDT)
Date:   Thu, 30 Mar 2023 16:21:15 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Subject: rumors of C89/C90's death exaggerated
Message-ID: <20230330212115.wm7wm54oo5z7nrze@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2r7ik7ssmhq2oy25"
Content-Disposition: inline
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2r7ik7ssmhq2oy25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Not to pile on regarding C89 and the (pending? discussed?) reversion to
the "STANDARDS" section currently on the tip of the master branch, but
as recently as _last week_, implementations are still being certified as
compliant with ISO C90.

Admittedly, you know, just for tiny hobbyist concerns like IBM z/OS.

I'm dropping the PDF attachment because vger.kernel.org is really harsh
about such things, but you can find it at the Austin Group list
archives.

Regards,
Branden

ObGroffStatus: Hoping Bertrand can tag 1.23.0.rc4 this weekend.  Bruno
Haible is a portability BAMF, and helped us fix several issues.

----- Forwarded message from "beh@peren.com via austin-group-l at The Open =
Group" <austin-group-l@opengroup.org> -----

Date: Thu, 30 Mar 2023 14:59:09 -0400
=46rom: "beh@peren.com via austin-group-l at The Open Group"
 <austin-group-l@opengroup.org>
To: austin-group-l@opengroup.org, beh@peren.com
Cc: 'Kobi Vinayagamoorthy' <kobiv@ca.ibm.com>, 'Rajan Bhakta'
 <rbhakta@us.ibm.com>, 'Sean Perry' <perry@ca.ibm.com>, 'Jia BJ Yu'
 <yujiabj@cn.ibm.com>
Subject: IBM C90 Certification
X-Mailer: Microsoft Outlook 16.0

We've been asked by IBM to let you know that IBM has been branded by
Perennial as conforming to the ISO/IEC C Standard for C Compilers for C90. A
copy of the Branding Certificate is attached.

=20

Thank you,

Barry Hedquist

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Barry E Hedquist

Perennial, Inc.

Tel: 1-904-280-2600

Email: beh@peren.com

=20




----- End forwarded message -----

--2r7ik7ssmhq2oy25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQl/UIACgkQ0Z6cfXEm
bc7rfg//cb2275yDMqDbrOHo/lU5nYcWt8zWv8Bzcm31yJEJ/nor56h6FYWK/sTk
2Er+0LJau5Q3klp+p949sAJdhoREIBdCK4TXmAEHqhRgBfndzKVhUzOwp/BJDfGz
kck0zwIfHdFuBNYaMR9OwFGxvmXbXcBESlOSb0fGz7QosXsueNzEwV1hIDYeDYvp
BGo8CjQ095ZBkiwHwEYYrGPD4kO/LiYTFOxmD6ZqzSn15iwq5pDRSJ4DIzPjNPWG
l6LtUCeFZqzMeuzEDXPBhmf+Dqc18xcyFWTCAEFEaU/alAZ6zUmSyxT4j7TJKFzl
m0FEgKwklqIEWwcjW4pXkf6N2lDORhOZ99FjpIgz+4TthEqs86ylUpYRclUXhY3g
/pnnPf+onYBLVBI9PQM3fCLs0x+XROEFSCgBrYlufF9IgTjTowoXK0yp/T51du5y
CViPg1L7o2H13ZC0CjlfasJc4UnhiSQ4oWnlC3aZd5CvLHQ2HC1tpgnXPbfV7iJY
NdkMAfaLxwlYefvgW39dnuzNq3rXc687o5w5Ty+ZVhtXT94PAeLYQMQ+PfJ11hXx
YBSFMtK7pv9sKLevH/vZMWakETxWDrwqqyglOMz8Ge9M/npuPqkBXxfCdxYhAVaC
hI/ZeuPH+0K8LwTidPHpgpzLAASbho9Qz7AWqVnvL5kjSEcuTkg=
=AT5x
-----END PGP SIGNATURE-----

--2r7ik7ssmhq2oy25--
