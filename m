Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5668123877
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2019 22:12:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726895AbfLQVMf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Dec 2019 16:12:35 -0500
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:39864 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726634AbfLQVMf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Dec 2019 16:12:35 -0500
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xBHL8DuS125217;
        Tue, 17 Dec 2019 16:12:33 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wy1x19xfk-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 16:12:33 -0500
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xBHLA3nc131895;
        Tue, 17 Dec 2019 16:12:33 -0500
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wy1x19xf7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 16:12:33 -0500
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
        by ppma03dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xBHLAfvn022896;
        Tue, 17 Dec 2019 21:12:32 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com [9.57.198.28])
        by ppma03dal.us.ibm.com with ESMTP id 2wvqc6qmee-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 21:12:32 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xBHLCVcG40960304
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 17 Dec 2019 21:12:31 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id A3902AC05F;
        Tue, 17 Dec 2019 21:12:31 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 157B7AC059;
        Tue, 17 Dec 2019 21:12:31 +0000 (GMT)
Received: from leobras.br.ibm.com (unknown [9.18.235.137])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Tue, 17 Dec 2019 21:12:30 +0000 (GMT)
Message-ID: <de08861a89ca3481fe81e80e509b7572116260c0.camel@linux.ibm.com>
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-man@vger.kernel.org
Date:   Tue, 17 Dec 2019 18:12:27 -0300
In-Reply-To: <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
         <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-IpsV6nMUBpIuLF8D7BMD"
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_04:2019-12-17,2019-12-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 adultscore=0 mlxscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1912170169
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-IpsV6nMUBpIuLF8D7BMD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-09-13 at 14:55 +0200, Michael Kerrisk (man-pages) wrote:
> Hello Jens,
>=20
> Would you be willing to take a look at this man-pages bug report
> relating to vmsplice()?

Hello Jens,

Could you please provide feedback on this patch?

Thank you,
Leonardo Bras


>=20
> Thanks,
>=20
> Michael
>=20
> On 8/2/19 12:24 AM, Leonardo Bras wrote:
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
> >=20
>=20
>=20

--=-IpsV6nMUBpIuLF8D7BMD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl35RLsACgkQlQYWtz9S
ttTeuxAAuZJ8J6MA9PfBt/Xkl45Lqmnl0rlDJM5kPbpdAaKwRD6fsslcOcczM82D
jUSnTVgcQdMKHa9RKT3kcBlCqHNlS+moh92Tm4sxmgMesXYGDOLDK6uEcxk+gBxr
o7YDj5FNl+mlGcVQ1pRGpQxp8sGGx1TkWu0utC+dvdiFFPDoEgpVmnUrB56iVqmy
y7ndGEowAW4jZl56/FXxDjgUz+oZD4HZLyAwv0qjXtBVz45j1edlZSVcpJJP0tvq
vhYHmFWLPfOzWT3i1mcsW07Ww3DTxGnoUY+nyRrMhZ6TRh8Veml2MaxL4aAij7Bu
jQMk4uyEswa1R1dVyf8PmAh9yKefh2DxQoAkPxWiSq9B9rqOqkRuQFSPlv7SJwHI
ul+JqhZgqO+JWDJo4Aw39n5udM0B+xeyjVH4G3UTEzzHo78vRD/Ucr8U9Idox+vv
V5+kH/YF8pdyl30HK9Xqub5TCxodqFKD7gwDEJP57Qtekqgqvl2BsFuWpuUgP1JG
9yPcKiJvrF5XLjvkRPyUQkw0Z8TQAmjH3Dv4v4PGl9x101lgu7ab2AFkTr2jJ9sC
b9KDgNzzZ262BzrboiCpXh2yCcy9nYuHKoDtDn3XMKOOyBQ4zzfey5xv98sQYQOs
fOZZ3m/6Zaa2LROPFfUsycaLlX/inwyZyX1tIiKheBUEYLDB3QQ=
=qUy1
-----END PGP SIGNATURE-----

--=-IpsV6nMUBpIuLF8D7BMD--

