Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7591D906BD
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2019 19:23:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727005AbfHPRXP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Aug 2019 13:23:15 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:19702 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727034AbfHPRXP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Aug 2019 13:23:15 -0400
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x7GHMa2W029737
        for <linux-man@vger.kernel.org>; Fri, 16 Aug 2019 13:23:14 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2udyxcsyca-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Fri, 16 Aug 2019 13:23:13 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x7GHNDQR031584
        for <linux-man@vger.kernel.org>; Fri, 16 Aug 2019 13:23:13 -0400
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2udyxcsyc2-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 16 Aug 2019 13:23:13 -0400
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
        by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x7GHK7nm020076;
        Fri, 16 Aug 2019 17:23:12 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com [9.57.198.26])
        by ppma02dal.us.ibm.com with ESMTP id 2u9nj683dj-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 16 Aug 2019 17:23:12 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x7GHNBvl16188246
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 16 Aug 2019 17:23:11 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id CDC75AC062;
        Fri, 16 Aug 2019 17:23:11 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 1F9F1AC068;
        Fri, 16 Aug 2019 17:23:11 +0000 (GMT)
Received: from LeoBras (unknown [9.85.220.147])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Fri, 16 Aug 2019 17:23:10 +0000 (GMT)
Message-ID: <d67d032b73b433622f3f985654d2a5372f65ad41.camel@linux.ibm.com>
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Fri, 16 Aug 2019 14:23:06 -0300
In-Reply-To: <cd250ed29f6d3e5609422afc1ddbc003719fd3b1.camel@linux.ibm.com>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
         <cd250ed29f6d3e5609422afc1ddbc003719fd3b1.camel@linux.ibm.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-MCfseczb5PnQlyXQUhO/"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-16_07:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=953 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908160179
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-MCfseczb5PnQlyXQUhO/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-08-08 at 15:18 -0300, Leonardo Bras wrote:
> On Thu, 2019-08-01 at 19:24 -0300, Leonardo Bras wrote:
> > As explained in splice.2, SPLICE_F_MOVE became a no-op, and since it
> > is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.
> >=20
> > I took a look in current code, and found no use of this flag:
> > When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
> > user_page_pipe_buf_steal, which is only used on
> > user_page_pipe_buf_ops, as a .steal component.
> >=20
> > But, in the whole kernel code, there is no calling of a steal()
> > function, making me believe this flag is not used anymore.
> >=20
> > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> > ---
> >  man2/vmsplice.2 | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> > index 17834607b..94fb86142 100644
> > --- a/man2/vmsplice.2
> > +++ b/man2/vmsplice.2
> > @@ -123,6 +123,11 @@ if this flag is not specified, then a subsequent
> >  .B SPLICE_F_MOVE
> >  must copy the pages.
> >  Data must also be properly page aligned, both in memory and length.
> > +Starting in Linux 2.6.21, it is a no-op, because the
> > +.B SPLICE_F_MOVE
> > +also became a no-op on
> > +.BR splice (2)
> > +.
> >  .\" FIXME
> >  .\" It looks like the page-alignment requirement went away with
> >  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
>=20
> Any feedback on this patch?

Please provide feedback on this patch

--=-MCfseczb5PnQlyXQUhO/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl1W5noACgkQlQYWtz9S
ttShtw//Yv9x6ZhmVM6GM60AhyUDpYCRLkFDIdFOfDJzDV+7s02lFdWimKZQl3qA
0OeBrySschPg6uiIdy7yb22VSEZAeN30Xnr/k74ZO27Pli3DggmwPtmEO8XfEt3f
GYqkUZtEvXj2jQA6i+W/8/cGCfbaT13OP5uMvzhz10OoXeXZtw+Dw0ZHw29sIoLL
tH84La6pGLMS5pRlJz4mGluOuJziz2aVr9K13E7b02elw/Wewkf4OQ8rQIkLbG1J
3q1GiZ+a/ZcamRrm6Tgfh0zugq5g6PI7SCLk3JoGZbLkyu+PPl1JVJq522RImA1D
RaC9nla9ihm4QSdLPtx2eth5NuoPzEfGhhJcodNY+vxQy4N+THtxHJzpC15xpwqc
vJ4L2IHwPCIISokyXvD2uR5xO/27DxNt6NFguF7zXitQ4USE7+HZf0jObEKKu/Pg
eS9QLI956NSxYZpgKCYOz1Gxsf7gFrrJ4EWlrtVKsPyqfNOdfkpg8Xxeplwyct3b
GOSBQcWmzuNxZ8l4YLAj1iogbvxUugHDXcESkun4WP4DTZWOktPiCGP57iQOK4ZT
DkifDcmKkS6Ur5J2Es4B7lf9aM7wDtmry99QWou2oYWwOVIpK6J4nsGwc4DmcWzU
WuzVehyjHkHhTiSn2irmRfeJsWxhO06lQPX13BvlTEGaV3yDY1s=
=UQDc
-----END PGP SIGNATURE-----

--=-MCfseczb5PnQlyXQUhO/--

